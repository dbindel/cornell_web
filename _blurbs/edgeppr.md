---
title: Edge-weighted personalized PageRank
image: metabolic.png
snippet: |
  Using model reduction for fast PageRank with varying edge weights.
papers:
  - 2015-edgeppr
talks:
  - 2016-04-purdue
  - 2016-03-hkbu
  - 2015-10-stanford
  - 2015-10-berkeley
  - 2015-08-kdd-talk
  - 2015-08-kdd-poster
  - 2015-03-scan
---

Personalized PageRank is a standard tool for finding vertices in a graph
that are most relevant to a query or user. To personalize PageRank, one
adjusts node weights or edge weights that determine teleport
probabilities and transition probabilities in a random surfer model.
There are many fast methods to approximate PageRank when the node
weights are personalized; however, personalization based on edge weights
has been an open problem since the dawn of personalized PageRank over a
decade ago. In this paper, we describe the first fast algorithm for
computing PageRank on general graphs when the edge weights are
personalized. Our method, which is based on model reduction, outperforms
existing methods by nearly five orders of magnitude. This huge
performance gain over previous work allows us — for the very first time —
to solve learning-to-rank problems for edge weight personalization at
interactive speeds, a goal that had not previously been achievable for
this class of problems.
