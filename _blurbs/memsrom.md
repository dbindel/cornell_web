---
title: Model reduction for MEMS
image: bode2_final.png
last_update: 2007-09-01
snippet:
  Simulating small devices using small models!
---

Frequency domain analysis of micro-electro-mechanical systems (MEMS)
is a great source of unusual linear algebra problems.  We use
eigenvalue analysis and model reduction methods to build compact
approximations to the frequency response that we can use for design of
these devices.  Because we care about the details of damping, the
eigenvalue problems that arise in these computations are
non-self-adjoint and sometimes nonlinear.  But though the problems
lack a nice self-adjoint structure, they often have more specific
structure: complex symmetry in problems with radiating boundary
conditions, weak coupling between thermal and mechanical fields in
thermoelastic damping calculations, etc.  Our work exploits this
structure as the basis of eigenvalue and model reduction algorithms
that are faster and more accurate than more general-purpose
alternatives.

### Links

* David S. Bindel.  [Structured and parameter-dependent eigensolvers
  for simulation-based design of resonant MEMS][d1].  Technical Report
  EECS-2006-108, UC Berkeley Computer Science Division, August 2006.
* ["Numerical and Semi-Analytical Structure Preserving Model Reduction
  for MEMS."]({{ site.baseurl }}/present/enumath-sep07.pdf) ENUMATH 2007, September 2007.
* David S. Bindel, Zhaojun Bai, and James W. Demmel.  [Model reduction
  for RF MEMS simulation][c10].  In _Proceedings of PARA 04_, Lecture
  Notes in Computer Science.  Springer, June 2004.

  [d1]: http://www.eecs.berkeley.edu/Pubs/TechRpts/2006/EECS-2006-108.html
 [c10]: http://dx.doi.org/10.1007/11558958_34
