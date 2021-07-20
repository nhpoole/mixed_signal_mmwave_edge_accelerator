namespace eval codegen {

  variable debug 0
  variable exit_on_codegen_script_error 1
  
  #
  # proc: template
  #   takes a template file and modifies it as per the 
  #   directives
  # args: <template file name> <directives>
  #
  # example:
  #   ::codegen::template my.template {
  #      # replace a placeholder
  #      placeholder {<< placeholder >>} {str to replace with}
  #
  #      # prepend a line after a placeholder - note must be used before 'placeholder' and 'delete_placeholder' directives
  #      prepend_placeholder {<< placeholder >>} {str to prepend (on previous line)}
  #
  #      # append a line after a placeholder - note must be used before 'placeholder' and 'delete_placeholder' directives
  #      append_placeholder {<< placeholder >>} {str to append (on following line)}
  #
  #      # delete the line including a placeholder
  #      delete_placeholder {<< placeholder >>}
  #
  #      # append some text to the end of the output file
  #      append {str}
  #
  #      # append some text to the start of the output file
  #      prepend {str}
  #
  #      # delete the line that matches '*match*'
  #      delete {match}
  #
  #      # put some text at the start of the first line that matches '*match*'
  #      prepend_before {match} {str to prepend}
  #
  #      # put some text at the end of the line that matches '*match*'
  #      append_after {match} {str to append}
  #   }
  #
  # ccr 1508612: allow template_filename to take multiple files: the first file that exists will be used as the template
  #
  proc template {template_filename directive} {
    d "Processing template $template_filename"
    variable working_data

    # check that the template file exists
    set chosen_template_filename ""
    foreach tf $template_filename {
      if {![file exists $tf]} {
        w "template_filename \{$tf\} does not exist"
      } else {
        set chosen_template_filename $tf
        break
      }
    }
    if {$chosen_template_filename eq ""} {
      w "did not find a valid template filename: template_filename arg = \{$template_filename\} not producing a tcl file"
      return;
    }

    # slurp the template
    set fp [open $chosen_template_filename r]
    set working_data [read $fp]
    close $fp

    set working_data [regsub -all {PLACEHOLDER\s+:} $working_data {PLACEHOLDER:}]

    # process the directive
    set lApplicableDirective [_determine_directives $directive]
    _apply_directives $lApplicableDirective

    # write to the tcl file
    set tcl_filename [string map {.template .tcl} $chosen_template_filename]
    d "writing to file $tcl_filename"
    set fp [open $tcl_filename "w"]
    puts -nonewline $fp $working_data
    close $fp

    # test the template to check it hasn't any PLACEHOLDERs left in it
    foreach L [split $working_data "\n"] {
      if {[regexp {^\s*\#} $L]} { continue; }
      if {[string match {*PLACEHOLDER*} $L]} {
        e "template ${template_filename}->${tcl_filename} has PLACEHOLDER still in the file"
      }
    }
  }

  ###############
  # Support funcs
  ###############
  
  variable lDirective {}

  proc _apply_directives {lApplicableDirective} {
    foreach d $lApplicableDirective {
      d "applying directive [dict get $d tag]"
      if {![dict exists $d apply_args]} { dict set d apply_args {}; }
      if {[catch \
               [list uplevel 2 \
                    [concat [dict get $d procName] [dict get $d apply_args]]\
                   ] \
               errOrVal]} { 
        e "Applying directive {[dict get $d tag]} failed error \{$errOrVal\}\n assert: \{$d\}"; 
      }
    }
  }

  proc _determine_directives {directive} {
    set parseDebug 0
    set lRawDirective {}

    #break the block into multiple, none-escaped blocks of text, each
    # one of these will be an individual directive
    #do this by iterating through the chars and pushing into a list
    set currentRaw ""
    set escape 0
    set inBracketNum 0;
    set inCommand 0;
    set command ""
    if $parseDebug { puts "---- processing\n$directive\n-------" }
    foreach char [split $directive {}] {
      if $parseDebug { puts -nonewline ">$char<" }
      if {$escape} {
        set escape 0
      } else {

        if {$char eq "\\"} { 
          if $parseDebug { puts -nonewline "E" }
          set escape 1; continue;
        }
        
        if {$char eq "\{"} {
          incr inBracketNum
          if $parseDebug { puts -nonewline "B${inBracketNum}" }
        }
        if {$char eq "\}"} {
          incr inBracketNum -1
          if $parseDebug { puts -nonewline "B${inBracketNum}" }
        }
        
        if {$inBracketNum == 0} {
          if {$char eq "\["} {
            set inCommand 1
            incr inBracketNum
            if $parseDebug { puts -nonewline "C+B${inBracketNum}" }
            continue;
          }            

          if {$char eq "\n"} {
            if {![regexp {^\s*$} $currentRaw] 
                && ![regexp {^\s*\#} $currentRaw]} { 
              lappend lRawDirective $currentRaw; 
            }
            if $parseDebug { puts "R" }
            set currentRaw {}
            continue;
          }
        } else {
          if {$inCommand && $inBracketNum == 1} {
            if {$char eq "\]"} {
              set inCommand 0
              incr inBracketNum -1
              if $parseDebug { puts -nonewline "C-B${inBracketNum}" }
              # Run the tcl to get the value to add to the arg
              d "_determine_directive_body: running un-directive-command \[$command\]"
              set currentRaw "${currentRaw} \{[uplevel 2 $command]\}"
              continue;
            }
          }
        }
      }
      if {$inCommand} {
        if $parseDebug { puts -nonewline "C" }
        set command "${command}${char}"; continue;
      } else {
        if $parseDebug { puts -nonewline "A" }
        set currentRaw "${currentRaw}${char}"; continue;
      }
    }
    if {![regexp {^\s*$} $currentRaw] 
        && ![regexp {^\s*\#} $currentRaw]} { 
      lappend lRawDirective $currentRaw; 
    }

    d "Found the following directive:"
    foreach lr $lRawDirective {
      d "  \{$lr\}"
    }

    # Validate they are all valid
    variable lDirective

    # Convert the asserts into some structure, checking args, etc.
    set lApplicableDirective {}
    foreach lr $lRawDirective {
      if {![dict exists $lDirective [lindex $lr 0]]} {
        e "Did not find directive \{$lDirective\} - \{[lindex $lr 0]\} is not a valid directive.\nValid directives are \{[dict keys $lDirective]\}."
      }
      set d [dict get $lDirective [lindex $lr 0]]
      
      # Check the number of arguments match
      set applyArgs {}

      # Convert any arguments that are variables to the contents of those variables
      foreach saa [lrange $lr 1 end] {
        if {[string range $saa 0 0] eq  "\$"} {
          d "_determine_directive_body:: converting \{$saa\} to \{[uplevel 2 subst [list $saa]]\}"
          lappend applyArgs [uplevel 2 subst [list $saa]]
        } else {
          lappend applyArgs $saa
        }
      }

      if {[llength $applyArgs] != [llength [dict get $d args]]} { 
        set expArgs {}
        foreach ea [dict get $d args] { lappend expArgs "<$ea>"; }
        e "Using directive tag {[lindex $lr 0]} with the incorrect number of args, you used {$applyArgs}, codegen expected {$expArgs}"; 
      }
      dict set d apply_args $applyArgs

      lappend lApplicableDirective $d
    }

    d "Return the following directive:"
    foreach lr $lApplicableDirective {
      d "  \{$lr\}"
    }


    return $lApplicableDirective
  }

  namespace eval directive {
    proc d {args} { eval {::codegen::d $args}}
    proc e {args} { eval {::codegen::e $args}}
    proc w {args} { eval {::codegen::w $args}}
    proc l {args} { eval {::codegen::l $args}}
  }

  proc register_directive {tag args body} {
    variable lDirective

    if {[dict exists $lDirective $tag]} { l "CODEGEN: overwriting existing directive tag {$tag}"; }

    set procName ::codegen::directive::$tag

    proc $procName $args $body

    dict set lDirective $tag [list tag $tag args $args procName $procName]
  }

  namespace eval commonDirectiveLibrary {

    ::codegen::register_directive replace {file} {
      set fp [open $file r]
      set file_data [read $fp]
      close $fp
      set ::codegen::working_data $file_data
    }

    ::codegen::register_directive placeholder {placeholder replace} {
      set placeholder [regsub -all {PLACEHOLDER\s+:} $placeholder {PLACEHOLDER:}]
      set ::codegen::working_data [string map [list $placeholder $replace] $::codegen::working_data]
    }

    ::codegen::register_directive prepend_placeholder {placeholder str} {
      set this_data $::codegen::working_data
      set first 1
      set ::codegen::working_data ""
      set placeholder [regsub -all {PLACEHOLDER\s+:} $placeholder {PLACEHOLDER:}]

      foreach l [split $this_data "\n"] {
        if {[string match "*${placeholder}*" $l]} {
          if $first {
            set ::codegen::working_data $str
            set first 0
          } else {
            set ::codegen::working_data "${::codegen::working_data}\n${str}"
          }          
        }
        if $first {
          set ::codegen::working_data $l
          set first 0
        } else {
          set ::codegen::working_data "${::codegen::working_data}\n${l}"
        }
      }
    }

    ::codegen::register_directive append_placeholder {placeholder str} {
      set this_data $::codegen::working_data
      set first 1
      set ::codegen::working_data ""
      set placeholder [regsub -all {PLACEHOLDER\s+:} $placeholder {PLACEHOLDER:}]

      foreach l [split $this_data "\n"] {
        if $first {
          set ::codegen::working_data $l
          set first 0
        } else {
          set ::codegen::working_data "${::codegen::working_data}\n${l}"
        }
        if {[string match "*${placeholder}*" $l]} {
          set ::codegen::working_data "${::codegen::working_data}\n${str}"
        }
      }
    }

    ::codegen::register_directive delete_placeholder {placeholder} {
      set this_data $::codegen::working_data
      set first 1
      set ::codegen::working_data ""
      set placeholder [regsub -all {PLACEHOLDER\s+:} $placeholder {PLACEHOLDER:}]

      foreach l [split $this_data "\n"] {
        if {[string match "*${placeholder}*" $l]} {
          d "removing line: $l"
        } else {
          if $first {
            set ::codegen::working_data $l
            set first 0
          } else {
            set ::codegen::working_data "${::codegen::working_data}\n${l}"
          }
        }
      }
    }

    ::codegen::register_directive attr {attr new_value} {
      set pretty_attr_name [string map {_ " "} [string toupper $attr]]
      # we need to escape backslashes, &, \0, etc in new value and surround in
      # braces if it contains spaces
      set safe_new_value [list set_db $attr]
      lappend safe_new_value [string map {"\\" "\\\\" "&" "\\&"} $new_value]
      # Change PLACEHOLDER to CODEGEN REPLACED to prevent PLACEHOLDER error
      set safe_new_value "${safe_new_value}; # << $pretty_attr_name CODEGEN REPLACED"
      regsub -all -lineanchor "^set_db $attr .+?; # << $pretty_attr_name PLACEHOLDER(?=.+?>>$)" $::codegen::working_data $safe_new_value ::codegen::working_data
    }

    ::codegen::register_directive delete_attr {attr} {
      set pretty_attr_name [string map {_ " "} [string toupper $attr]]
      set this_data $::codegen::working_data
      set first 1
      set ::codegen::working_data ""

      foreach l [split $this_data "\n"] {
        if {[regexp -- "^set_db $attr .+?; # << $pretty_attr_name PLACEHOLDER.+?>>$" $l]} {
          d "removing line: $l"
        } else {
          if $first {
            set ::codegen::working_data $l
            set first 0
          } else {
            set ::codegen::working_data "${::codegen::working_data}\n${l}"
          }
        }
      }
    }

    ::codegen::register_directive append {str} {
      set ::codegen::working_data "${::codegen::working_data}\n$str\n"
    }

    ::codegen::register_directive prepend {str} {
      set ::codegen::working_data "$str\n${::codegen::working_data}"
    }

    ::codegen::register_directive delete {match} {
      delete_placeholder $match      
    }
    
    ::codegen::register_directive prepend_before {match str} {
      set this_data $::codegen::working_data
      set first 1
      set found 0
      set ::codegen::working_data ""

      foreach l [split $this_data "\n"] {
        if {$first} {
          set first 0
        } else {
          set ::codegen::working_data "${::codegen::working_data}\n";
        }
        if {($found eq 0) && [string match "*${match}*" $l]} {
          set found 1
          set ::codegen::working_data "${::codegen::working_data}${str}";
        }
        set ::codegen::working_data "${::codegen::working_data}${l}"
      }
    }

    ::codegen::register_directive append_after {match str} {
      set this_data $::codegen::working_data
      set first 1
      set found 0
      set ::codegen::working_data ""

      foreach l [split $this_data "\n"] {
        if {$first} {
          set first 0
        } else {
          set ::codegen::working_data "${::codegen::working_data}\n";
        }
        set ::codegen::working_data "${::codegen::working_data}${l}";
        if {($found eq 0) && [string match "*${match}*" $l]} {
          set found 1
          set ::codegen::working_data "${::codegen::working_data}${str}";
        }
      }
    }
  }


  set terminal_handles_color {}
  proc color {{c "normal"}} {
    variable terminal_handles_color
    if {$terminal_handles_color eq {}} {
      set terminal_handles_color 0
      if {![catch {exec tput colors} tc]} {
        if {$tc > 2} {
          set terminal_handles_color 1
        }
      }
    }
    if {$terminal_handles_color} {
      switch -- $c {
        red { return "\033\[91m"; }
        green { return "\033\[32m"; }
        yellow { return "\033\[93m"; }
        blue {return "\033\[94m"; }
        magenta {return "\033\[95m"; }
        cyan {return "\033\[96m"; }
        gray {return "\033\[97m"; }
        bold { return "\033\[1m"; }
        default { return "\033\[0m"; }
      }
    } else {
      return ""
    }
  }

  proc d {str} {
    variable debug
    if {$debug} {
      puts "[color gray]CODEGEN DEBUG: $str[color]"
    }
  }

  proc l {str} {
    puts "CODEGEN LOG: $str"
  }

  proc w {str} {
    puts "[color yellow]CODEGEN WARNING: $str[color]";
  }

  proc e {str} {
    puts "[color red]CODEGEN ERROR: $str[color]";
    variable exit_on_codegen_script_error
    if {$exit_on_codegen_script_error} {
      puts "CODEGEN error, so exiting"
      exit 1
    }
  }

}
