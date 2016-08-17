---
title: Scattering resonances
image: corral_top.jpg
snippet: |
  Linear eigenproblems for standing waves;
  nonlinear eigenproblems for almost-standing waves.
links:
  -
    text: |
      David Bindel and Maciej Zworski.  
      Theory and Computation of Resonances in 1D Scattering
    url: http://www.cs.cornell.edu/~bindel/cims/resonant1d
  -
    text: MatScat on GitHub
    url: https://github.com/dbindel/matscat
  -
    text: MatScatPy (by Sheroze Sherrifdeen and Chaitali Joshi)
    url: https://github.com/sheroze1123/MatScatPy
papers:
  - 2015-sirev
  - 2013-simax
  - 2007-symmetry
talks:
  - 2013-01-cardiff
  - 2012-09-fields
  - 2011-07-iciam
  - 2011-03-scan
  - 2010-07-stewart
  - 2009-11-sfu
  - 2009-10-nycam
  - 2009-09-cornell-scan
  - 2009-07-siam
  - 2009-07-msri
  - 2009-02-doe
  - 2008-10-berkeley
  - 2008-10-banff
  - 2006-04-lapack
---

Most work on numerical analysis of eigenvalue problem involves either
self-adjoint problems or problems that can be strongly approximated by
something finite dimensional (i.e. operators with compact resolvent).
Many interesting problems from scattering theory and from the
stability theory of traveling waves fall into neither of these
categories.  For example, _resonance poles_ in scattering theory give
information about the asymptotic dynamics of trapped waves leaking
from a bounded subdomain in the same way that eigenvalues give
information about asymptotic steady-state vibrations on finite
domains.  There are several ways to define resonances, but for
computation it is often convenient to describe them as solutions to
_nonlinear_ eigenvalue problems.  We work on fast algorithms to find
solutions to such nonlinear eigenproblems and analysis to describe the
error in what we compute -- and to tell us what solutions our
computations might miss.
