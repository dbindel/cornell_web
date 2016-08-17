---
title: femat_sparse
image: Mesh_fem.jpg
snippet: Fast finite element matrix assembly in MATLAB
menu:
 - text: Tarball
   url: http://www.cs.cornell.edu/~bindel/sw/femat_sparse-0.7.tar.gz
links:
 - text: Article by Tim Davis on FEA matrices in MATLAB.
   url: http://blogs.mathworks.com/loren/2007/03/01/creating-sparse-finite-element-matrices-in-matlab/
---

Mass and stiffness matrices in finite element codes are typically
assembled from a large number of smaller element matrix contributions.
The naive approach to such matrix assembly in MATLAB is hideously slow.
There are alternative approaches that work better.  `femat_sparse`
was at the time of writing the fastest way that I could figure out
how to put together these matrices (based on a C++ extension).
