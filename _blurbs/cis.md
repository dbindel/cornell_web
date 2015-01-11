---
title: Continuing invariant subspaces
image: lambda.jpg
last_update: 2008-01-01
snippet:
  If $A(s)$ is a parameter-dependent matrix, how do we compute
  an invariant subspace basis $V(s)$?
---

In many problems, we care about eigenvalues not just for a fixed
matrix, but for a parameterized family of matrices.  For example, in a
numerical bifurcation analysis, one analyzes eigenvalues of Jacobian
matrices associated with behavior near a parameterized family of
dynamical equilibria.  When an eigenvalue crosses over the imaginary
axis, a change of stability ensues.  A natural idea for computation is
to use _continuation_ to quickly recompute the eigenvalues closest to
the imaginary axis as we walk along a branch of dynamical equilibria.
But even for very smooth families of matrices, individual eigenvectors
can be ill-behaved or even discontinuous; so instead of looking
continuing individual eigenvectors, we may continue _invariant
subspaces_.  Our work focuses on how to carry out this continuation
efficiently for the types of large, sparse problems that arise in PDE
stability analyses.  We also care about deriving bounds that
ensure that our algorithms do not miss a bifurcation event because we
failed to compute a critical eigenvalue.

### Links

*  David S. Bindel, James W. Demmel, and Mark Friedman.
   [Continuation of invariant subspaces in large bifurcation problems][1].
   _SIAM Journal on Scientific Computing_, 30(2): 637--656, 2008.
*  Cynthia Bruyns-Maxwell and David S. Bindel,
   [Modal Parameter Tracking for Shape Changing Objects][c1].
   In _Proceedings of DAFx 2007_, Bordeaux, France, September 2007.
*  ["Continuation of Invariant Subspaces of Sparse Parameter-Dependent
   Matrices."](/present/house-may05.pdf)  Householder meeting, May 2005.

  [1]: http://dx.doi.org/10.1137/060654219
  [c1]: http://cnmat.berkeley.edu/publication/modal_parameter_tracking_shape_changing_geometric_objects
