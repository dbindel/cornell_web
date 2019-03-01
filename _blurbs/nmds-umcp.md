---
title: Lectures on Numerical Methods for Data Science
image: metabolic.png
snippet: |
  Six lectures on numerical methods and their relation to modern data science.
---

As part of my sabbatical activity in spring 2019, I will visit the
mathematics department at University of Maryland, College Park (my
alma mater!) to give a series of lectures on some topics in numerical
methods in data science.  Each week will treat a different topic with
a two-lecture sequence: one to set up the topic and the terminology,
and one to explore some recent developments.  Titles and abstracts are
given below.  All talks take place at Kirwan Hall 3206.


### Week 1: Latent factor models
#### Tue, April 16 at 2:00 PM and Thu, April 18 at 3:30 PM

Approximate low-rank factorizations pervade matrix data analysis,
often interpreted in terms of latent factor models.  After discussing
the ubiquitous singular value decomposition (aka PCA), we turn to
factorizations such as the interpolative decomposition and the CUR
factorization that offer advantages in terms of interpretability and
ease of computation.  We then discuss constrained approximate
factorizations, particularly non-negative matrix factorizations and
topic models, which are often particularly useful for decomposing data
into sparse parts.  Unfortunately, these decompositions may be very
expensive to compute, at least in principal.  But in many practical
applications one can make a separability assumption that allows for
relatively inexpensive algorithms.  In particular, we show how to the
separability assumption enables efficient linear-algebra-based
algorithms for topic modeling, and how linear algebraic preprocessing
can be used to "clean up" the data and improve the quality of the
resulting topics.


### Week 2: Scalable kernel methods
#### Tue, Apr 23 at 2:00 PM and Thu, Apr 25 at 3:30 PM

Kernel methods are used throughout statistical modeling, data
science, and approximation theory.  Depending on the community, they
may be introduced in many different ways: through dot products of
feature maps, through data-adapted basis functions in an interpolation
space, through the natural structure of a reproducing kernel Hilbert
space, or through the covariance structure of a Gaussian process.  We
describe these various interpretations and their relation to each
other, and then turn to the key computational bottleneck for all
kernel methods: the solution of linear systems and the computation of
(log) determinants for dense matrices whose size scales with the
number of examples.  Recent developments in linear algebra make it
increasingly feasible to solve these problems efficiently even with
millions of data points.  We discuss some of these techniques,
including rank-structured factorization, structured kernel
interpolation, and stochastic estimators for determinants and their
derivatives.  We also give a perspective on some open problems and
on approaches to addressing the constant challenge posed by the
curse of dimensionality.


### Week 3: Spectral methods in network analysis
#### Tue, April 30 at 2:00 PM and Wed, May 1 at 2:00 PM

Linear algebra methods play a central role in modern methods for
large-scale network analysis.  The same approach underlies many of
these methods.  First, one tells a story that associates the network
with a matrix, either as the generator of a linear time-invariant
dynamical process on the graph or as a quadratic form used to
measure some quantity of interest.  Then, one uses the eigenvalues and
eigenvectors of the matrix to reason about the properties of the
dynamical system or quadratic form, and from there to understand the
network.  We describe some of the most well-known spectral network analysis
methods for tasks such as bisection and partitioning, clustering and
community detection, and ranking and centrality.  These methods
largely depend only on a few eigenvalues and eigenvectors, but we will
also describe some methods that require a more global perspective,
including methods that we have developed for local spectral clustering
and for graph analysis via spectral densities.
