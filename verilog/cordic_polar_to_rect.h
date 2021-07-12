////////////////////////////////////////////////////////////////////////////////
//
// Filename: 	cordic_polar_to_rect.h
// {{{
// Project:	A series of CORDIC related projects
//
// Purpose:	This .h file notes the default parameter values from
//		within the generated seqcordic file.  It is used to communicate
//	information about the design to the bench testing code.
//
// This core was generated via a core generator using the following command
// line:
//
//  ./gencordic -vca -f ../rtl/cordic_polar_to_rect.v -v -i 16 -o 16 -p 16 -t sp2r -x 2 -c
//
// Creator:	Dan Gisselquist, Ph.D.
//		Gisselquist Technology, LLC
//
////////////////////////////////////////////////////////////////////////////////
// }}}
// Copyright (C) 2017-2021, Gisselquist Technology, LLC
// {{{
// This file is part of the CORDIC related project set.
//
// The CORDIC related project set is free software (firmware): you can
// redistribute it and/or modify it under the terms of the GNU Lesser General
// Public License as published by the Free Software Foundation, either version
// 3 of the License, or (at your option) any later version.
//
// The CORDIC related project set is distributed in the hope that it will be
// useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTIBILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser
// General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  (It's in the $(ROOT)/doc directory.  Run make
// with no target there if the PDF file isn't present.)  If not, see
// License:	LGPL, v3, as defined and found on www.gnu.org,
//		http://www.gnu.org/licenses/lgpl.html
//
////////////////////////////////////////////////////////////////////////////////
//
// }}}
#ifndef	CORDIC_POLAR_TO_RECT_H
#define	CORDIC_POLAR_TO_RECT_H
#ifdef	CLOCKS_PER_OUTPUT
#undef	CLOCKS_PER_OUTPUT
#endif	// CLOCKS_PER_OUTPUT
#define	CLOCKS_PER_OUTPUT	14

const int	IW = 16;
const int	OW = 16;
const int	NEXTRA = 3;
const int	WW = 19;
const int	PW = 16;
const int	NSTAGES = 13;
const double	QUANTIZATION_VARIANCE = 2.6462e-01; // (Units^2)
const double	PHASE_VARIANCE_RAD = 2.8665e-08; // (Radians^2)
const double	GAIN = 1.1644353426140084;
const double	BEST_POSSIBLE_CNR = 71.91;
const bool	HAS_RESET = true;
const bool	HAS_AUX   = true;
#define	HAS_RESET_WIRE
#define	HAS_AUX_WIRES
#endif	// CORDIC_POLAR_TO_RECT_H
