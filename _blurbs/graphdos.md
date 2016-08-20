---
title: GraphDoS
image: metabolic.png
snippet: |
  Analyzing graphs based on global and local Density of States
menu:
  - text: GitHub
    url: https://github.com/dbindel/graph-dos
papers:
  - 2015-siam-ns
talks:
  - 2016-07-siam
  - 2016-02-scan
  - 2013-11-nycam
  - 2013-11-brownbag
---

Researchers from many disciplines study spectra to understand the
structure and composition of mathematical objects and physical systems.
For large systems, *complete* spectral information costs too much,
whether it is gathered computationally or measured experimentally;
hence, most spectral analysis methods use *partial* information about
the eigenvalues or eigenvectors of some matrix or operator.
Broadly speaking, these methods use either

 - A few (extreme) eigenvalues and associated eigenvectors
 - Invariants that are simple functions of all the eigenvalues
 - Densities of eigenvalues (a.k.a. [density of states][dos]),
   possibly weighted by local importance.

All three approaches are used in spectral geometry an in applications to
physics and engineering systems.  But distributional information is much
less used in the study of complex networks.  Indeed, though [Weyl's
law][weyl] or eigenvalue distributions was introduced to spectral
geometry six decades prior to [Cheeger's inequality][cheeger], within
spectral graph theory the latter is universally taught as part of
spectral graph theory while the former is nearly unknown, though related
concepts having to do with the [heat kernel][heat] have started to be
more widely used.

In this project, we explore the computation and interpretation of the
density of states and local density of states for different
network-related matrices.

[weyl]: https://en.wikipedia.org/wiki/Weyl_law
[heat]: https://en.wikipedia.org/wiki/Heat_kernel
[dos]: https://en.wikipedia.org/wiki/Density_of_states
[cheeger]: https://en.wikipedia.org/wiki/Cheeger_constant
