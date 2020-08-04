---
title: MWrap
image: mrap.jpg
snippet: A gateway language for mixing MATLAB and C
menu:
  - text: GitHub
    url: https://github.com/dbindel/mwrap
  - text: Manual
    url: http://www.cs.cornell.edu/~bindel/sw/mwrap/mwrap.pdf
links:
  - text: GitHub (Zydrunas Gimbutas)
    url: https://github.com/zgimbutas/mwrap
  - text: Minimally complete example from Alex Barnett
    url: https://github.com/ahbarnett/mwrapdemo
  - text: Old page
    url: http://www.cs.cornell.edu/~bindel/sw/mwrap/
  - text: Ubuntu page
    url: https://launchpad.net/ubuntu/+source/mwrap
  - text: Not to be confused with MRAP
    url: https://en.wikipedia.org/wiki/MRAP
---

MWrap is a compiler for a mini-language that simplifies the
process of interfacing MATLAB to C via MEX (the MATLAB EXternal
interface system).  MWrap plays a similar role to Cython in the
Python ecosystem: it allows one to produce MATLAB/C hybrids using
a single integrated script.  Someone has added this to the Ubuntu
universe, so you can download it via `apt-get` if you use Ubuntu.

Zydrunas Gimbutas has contributed patches to keep MWrap working with
recent MATLAB updates (I have forked his GitHub repository for the new
"official" home of MWrap), and Alex Barnett has contributed some nice
demos.
