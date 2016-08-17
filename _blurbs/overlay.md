---
title: Network tomography
image: network.png
snippet: |
  Inferring internal network state by measuring end-to-end paths.
  It's a CAT scan for the Internet!
papers:
  - 2009-tons
  - 2007-tons
  - 2006-sigcomm
  - 2006-sigmetrics
  - 2004-sigcomm
  - 2003-imc
  - 2003-tomography-tr
talks:
  - 2011-07-householder
  - 2011-04-courant
  - 2004-03-lapack
  - 2003-06-matrix
---

Consider a system consisting of a relatively small number of hosts in
a large network (like the Internet).  We would like to know the
properties of *every* pairwise path between the hosts in the system,
but we would prefer not to have to measure all such paths.  Somewhat
surprisingly, this is possible.  Many path metrics, such as latency,
jitter, and (log) packet transmission success rates, can be written as
sums of corresponding measures on the edges that make up the paths.
Therefore, we can write a linear system relating row properties to
path properties via a *path* matrix.  The rank of the path matrix is
typically much lower than the number of end-to-end paths.  Thus, we
can use linear dependencies between rows of the path matrix to infer
properties of all the paths from a relatively small number of
measurements.  This path matrix also serves as the basis of inference
about properties of individual links, when such inference is possible.
Our current work involves building fast algorithms for factoring path
matrices based on understanding the relation between the linear
algebraic structure and the structure of the underlying network
routing.
