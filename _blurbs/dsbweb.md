---
title: dsbweb
image: fountain_pen.png
snippet: Simple literate programming for C/C++, MATLAB, and Fortran
menu:
 - text: Source
   url: http://www.cs.cornell.edu/~bindel/sw/dsbweb.c
 - text: Manual
   url: http://www.cs.cornell.edu/~bindel/sw/dsbweb.pdf
---

The `dsbweb` system is a code documentation system inspired by Knuth’s WEB system
and its offshoots, as well as by systems like Javadoc and Doxygen. `dsbweb`
extracts markup (LATEX or Markdown) embedded into structured comments in
C/C++, FORTRAN, MATLAB, Lua, or shell codes. The code and documentation
therefore live together in a single file, which can be
compiled into an executable without special processing.  The source to `dsbweb`
includes its own documentation.

For my own use, `dsbweb` has been superceded by [LDoc].

[LDoc]: http://www.cs.cornell.edu/~bindel/blurbs/ldoc.html
