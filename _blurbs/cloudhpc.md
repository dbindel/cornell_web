---
title: Declarative HPC
image: bluegene.jpg
snippet: |
  Optimizing parallel code is hard -- so automate as much as possible.
papers:
  - 2013-blockgrace
  - 2011-socc
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
