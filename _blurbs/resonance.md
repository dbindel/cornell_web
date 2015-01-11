---
title: Scattering resonances
image: corral_top.jpg
last_update: 2010-07-10
snippet:
  Linear eigenproblems for standing waves;
  nonlinear eigenproblems for almost-standing waves.
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

### Links

* David Bindel and Maciej Zworski.  [Theory and Computation of
  Resonances in 1D
  Scattering](http://www.cs.cornell.edu/~bindel/cims/resonant1d)
  (introductory notes)
* ["Resonances: Interpretation, Computation, and Perturbation."](/present/stewart-jul10.pdf), Conference in honor of Pete Stewart on Numerical Linear Algebra:
  Perturbation, Performance, and Portability, July 2010.
* ["Bounds and Error Estimates for Nonlinear Eigenvalue
  Problems."](/present/berkeley-oct08.pdf) Applied Mathematics Seminar,
  UC Berkeley, October 2008.
* ["Numerical Methods for Resonance
  Calculations."](/present/banff-oct08.pdf) BIRS Workshop on
  Mathematical Theory of Resonances, October 2008.
* David S. Bindel and Maciej Zworski.  [Symmetry of bound and
  antibound states in the semiclassical limit][3].  _Letters in Math
  Physics_, 81(2):107--117, 2007.

  [3]: http://dx.doi.org/10.1007/s11005-007-0178-7
