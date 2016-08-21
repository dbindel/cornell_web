---
title: Local spectral clustering
image: metabolic.png
snippet: |
  Using eigenvalue iterations to grow graph clusters from seeds.
papers:
  - 2016-losp-kdd
  - 2015-icdm
  - 2015-www
talks:
  - 2012-07-mmds
  - 2011-11-chicago
  - 2011-11-brownbag
  - 2011-09-scan
---

Spectral methods are frequently used to partition networks into
large clusters that approximately minimize the number of edges
between clusters or maximize quality measures such as modularity.
However, these methods are less useful for finding relatively small,
tight-knit communities.  In contrast, recent *diffusion* methods
explore the neighborhood around a pre-defined set of "seed" nodes
in a network in order to find small communities that are "good"
in some sense (typically using a measure like conductance).

Our work interpolates between spectral methods and diffusion-based
methods by searching for communities using *unconverged* eigenvector
estimates based on Rayleigh-Ritz approximation from a Krylov subspace
started with a distribution over a seed vector.  These eigenvector-like
objects reflect the "shape" of the intermediate dynamics of diffusion
processes in a manner analogous to how the extremal eigenvectors of
a transition matrix reflect the shape of the asymptotic dynamics of
convergence to the equilibrium distribution.
