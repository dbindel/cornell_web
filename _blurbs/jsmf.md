---
title: Spectral topic modeling
image: jsmf-graph.png
snippet: |
  Better topic inference by enforcing implied structures.
papers:
  - 2015-nips
---

Topic modeling is a statistical approach to understanding the semantic
structure of a collection of documents.  The basic idea is to decompose
documents (or images, playlists, ...) into distributions over words (or
pixels, songs, ...) that reflect common, coherent, semantically
meaningful "topics."  Standard statistical models for how documents are
generated from topics, such as Latent Dirichlet Allocation, provide a
high-quality decomposition, but may require significant computational
resources for training.  In contrast, recent "spectral" inference
algorithms based on separability assumptions are both fast and provably
optimal under certain assumptions on the generating process.

But real data sets often show properties that are inconsistent with the
assumptions of the generative models used by spectral inference methods.
We explore the structure of matrices of co-occurrence statistics that
are implied (in expectation) by a particular generative model for topic
inference, and show that explicitly enforcing this structure in sample
co-occurrence statistics allows us to significantly improve the quality
of inferred topics.
