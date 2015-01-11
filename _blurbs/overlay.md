---
title: Network tomography
image: network.png
last_update: 2009-12-01
snippet:
  Inferring internal network state by measuring end-to-end paths.
  It's a CAT scan for the Internet!
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

### Links

* Yao Zhao, Yan Chen, and David S. Bindel.  [Toward unbiased end-to-end
  network diagnosis][1].  _ACM Transactions on Networking_, 17(6): 
  1724--1737, 2009.
* Yan Chen, David S. Bindel, Hanhee Song, Brian Chavez, and Randy
  H. Katz.  [Algebra-based scalable overlay network monitoring:
  Algorithms, evaluation, and applications][2].  _ACM Transactions on
  Networking_, 15(5): 1084--1097, 2007.  
* Yao Zhao, Yan Chen, and David S. Bindel.  [Toward unbiased
  end-to-end network diagnosis][c4].  In _Proceedings of SIGCOMM
  2006_, pages 219--230, 2006.
* Yan Chen, David S. Bindel, Hanhee Song, and Randy H. Katz.
  [An algebraic approach to practical and scalable overlay network monitoring][c5].
  In _Proceedings of SIGCOMM 2004_, pages 55--66, 2004.

  [1]: http://dx.doi.org/10.1109/TNET.2009.2022158
  [2]: http://dx.doi.org/10.1109/TNET.2007.896251
  [c4]: http://dx.doi.org/10.1145/1151659.1159939
  [c5]: http://dx.doi.org/10.1145/1030194.1015475

