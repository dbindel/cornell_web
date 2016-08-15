---
title: Rank-structured PDE solvers
image: nested_1_level_matrix.png
last_update: 2016-03-01
snippet: |
  Moving toward pain-free fast direct sparse solvers for 3D PDEs.
papers:
  - 2015-rsc
talks:
  - 2016-03-sanya
  - 2015-10-siam
  - 2013-07-nd40
---

PDE models are a mainstay of computational science and engineering,
but even linear elliptic PDEs are hard to solve in 3D.  Standard
direct methods based on sparse Gaussian elimination scale terribly for
three-dimensional problems, taking $O(N^2)$ time and $O(N^{4/3})$
memory for relatively large $N$.  Preconditioned iterative methods are
often an attractive alternative, but these methods can be finicky:
they depend on many tuning parameters, and for hard problems they
require expert care and feeding.

The goal of this project is to combine sparse factorization methods
and fast solvers for rank-structured matrices to build fast,
cache-aware algorithms and robust solvers for general linear PDE
discretizations.  Our approach is based on the idea that
correctly-ordered factorization of PDE discretization matrices yields
factors that are not only largely sparse, but that even dense blocks
formed during factorization have low rank structure.  This low rank
structure reflects the interpretation of these intermediate matrices
as discretizations of boundary integral equations.  By using both
sparsity and low rank structure, our methods dramatically improve the
scalability of direct methods, yet remain robust without the parameter
tuning required for typical iterative methods.
