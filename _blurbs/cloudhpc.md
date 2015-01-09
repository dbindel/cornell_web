---
title: Declarative HPC
kind:  blurb
layout: blurb
image: /pic/bluegene.jpg
last_update: 2013-08-01
snippet:
  Optimizing parallel code is hard -- so automate as much as possible.
latest:
- <a href="http://www.vldb.org/pvldb/vol6/p2014-xie.pdf">Fast Iterative
  Graph Computation with Block Updates</a> (with Wenlei Xie,
  Guozhang Wang, Al Demers, and Johannes Gehrke, in Proceedings of VLDB,
  Vol 6, No 14)
- <a href="http://dx.doi.org/10.1145/2038916.2038936">Making
  time-stepped applications tick in the cloud.</a> (with Tao Zou,
  Guozhang Wang, Marcos Vaz Salles, Al Demers, Johannes Gehrke, and
  Walker White, SOCC 2011) 
---

Engineering high-performance serial code is hard.  Squeezing
performance from parallel code with any nontrivial communication is
harder.  Even on one node, it's hard to orchestrate communication so
that computing units don't spend all their time waiting for data,
whether that data is coming from another core or from a slow main
memory.  Communication costs are particularly hard to manage in
applications with irregular data access; and the task is maddening in
cloud environments, where network contention and virtual machine
scheduling can cause huge, unpredictable spikes in message latency.
We tackle these challenges with frameworks consisting of a language to
let the programmer declare data dependencies and a runtime to manage
the task of communicating that data in a timely fashion.
