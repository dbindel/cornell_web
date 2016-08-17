---
title: RSC
image: nested_1_level_matrix.png
snippet: Rank-structured Cholesky for fast PDE solves
menu:
  - text: GitHub
    url: https://github.com/jeffchadwick/rank_structured_cholesky
  - text: Fast ND home
    url: http://www.cs.cornell.edu/~bindel/blurbs/fastnd.html
papers:
  - 2015-rsc
talks:
  - 2016-03-sanya
  - 2015-10-siam
  - 2013-07-nd40
---

The Rank Structured Cholesky (RSC) solver was developed by
Jeff Chadwick (Ph.D. 2013) in joint work with me;
it is based on Tim Davis's [CHOLMOD][suite], a widely-used
standard sparse Cholesky solver.
Unlike CHOLMOD, the RSC solver
takes advantage of low-rank block structure that appears naturally
in many large linear systems that arise in elliptic PDE
discretizations, and so has good scaling properties in both
time and memory complexity.  Unlike some other solvers based on
similar ideas, the RSC solver also has good performance in
practice, as it is engineered from the ground up to make
good use of fast level-3 BLAS routines.

[suite]: http://faculty.cse.tamu.edu/davis/suitesparse.html
