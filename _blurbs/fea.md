---
title: Finite element analysis
image: Mesh_fem.jpg
snippet: |
  Solving the elliptic PDE models of continuum physics.
links:
  - text: FEAP extensions and interfaces
    url: http://www.cs.cornell.edu/~bindel/blurbs/feap.html
  - text: "AxFEM: Analyzing near-axisymmetric resonant MEMS"
    url: http://www.cs.cornell.edu/~bindel/blurbs/axfem.html
  - text: "HiQLab: Finite element analysis of damping in resonant MEMS"
    url: http://www.cs.cornell.edu/~bindel/blurbs/hiqlab.html
  - text: "BoneFEA: Finite element analysis of human bones"
    url: http://www.cs.cornell.edu/~bindel/blurbs/bone.html
---

Finite element analysis is a method for solving partial differential
equations (PDEs).  There are many other methods for solving PDEs with
different features, but finite element methods are attractive both
because they work well with complex geometries and because they are
relatively simple to implement and analyze.  I use [existing codes][feap]
where appropriate, but have released several
finite element [software packages][sw] for simulating problems from
[MEMS design][mems] and [analysis of human bone][bone].

[sw]: {{ site.baseurl }}/software.html
[feap]: {{ site.baseurl }}/blurbs/feap.html
[mems]: {{ site.baseurl }}/blurbs/mems.html
[bone]: {{ site.baseurl }}/blurbs/bone.html
