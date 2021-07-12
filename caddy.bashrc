module load base xcelium matlab/caddy2016b vcs

# Copy the magic config file if it doesn't exist already.
cp /home/users/nhpoole/PDKS/sky130A/libs.tech/magic/sky130A.magicrc .magicrc

# Set the PDKPATH variable.
export PDKPATH=/home/users/nhpoole/PDKS/sky130A

# define function to add to path
# ref: https://superuser.com/a/39995
pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

# add ngspice to path
pathadd /cad/ngspice/33/bin

# add gaw to path
pathadd /cad/gaw3/bin
