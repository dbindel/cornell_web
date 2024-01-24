---
title: Kernel methods
image: gp_demo2.png
snippet: |
  Theory and scalable algorithms for kernel-based function
  approximation.
blurbs:
  - rbfopt
papers:
  - 2023-tmlr
  - 2022-neurips
  - 2022-siam-pp
  - 2021-neurips
  - 2020-icml
  - 2018-nips-a
  - 2018-nips-b
  - 2017-nips
talks:
  - 2022-07-siam
  - 2022-06-householder
  - 2022-01-enla
  - 2021-09-chelluri
  - 2021-05-ala
  - 2019-01-iit
  - 2019-01-chicago
  - 2018-10-northwestern
  - 2018-09-purdue
  - 2018-06-suzhou
  - 2017-11-ipam
  - 2017-09-scan
  - 2017-06-householder
  - 2015-03-siam-cse
  - 2014-09-scan
---

Kernel methods are a family of methods that involve a function
$k(x,y)$ that describes the expected similarity of function values at
points $x$ and $y$.  These methods are sometimes interpreted
probabilistically, with the kernel representing the covariance of
random variables at different locations, and sometimes they are
interpreted deterministically.  These different interpretations
provide distinct ways of thinking about kernel selection and error
analysis.  Independent of the interpretation, kernel methods tend
to result in large, dense, highly-structured linear matrix problems;
computations with these matrices are a serious bottleneck in scaling
to large data sets.  In this line of work, we consider both the
theoretical aspects of kernel-based function approximation schemes
and the nuts-and-bolts of algorithms that exploit matrix
structure in order to scale to large data sets.
