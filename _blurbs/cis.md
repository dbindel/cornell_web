---
title: Continuing invariant subspaces
image: lambda.jpg
snippet: |
  If $A(s)$ is a parameter-dependent matrix, how do we compute
  an invariant subspace basis $V(s)$?
papers:
  - 2014-matcont
  - 2008-cis
  - 2007-sound
  - 2006-dissertation
  - 2006-sound
  - 2006-cis
  - 2005-iccs
talks:
  - 2007-02-siam-cse-b
  - 2005-10-lapack
  - 2005-05-house
  - 2003-04-lapack
  - 2002-10-lapack
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
