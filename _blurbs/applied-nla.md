---
title: Applied numerical linear algebra
image: lambda.jpg
snippet: |
  Relating linear algebraic structure to application structure.
---

Most of my work involves linear algebra in some form.  A common theme
in this work is *structure*, whether that structure comes
from the geometry of a physical problem or of a manifold of matrices,
special algebraic properties like complex symmetry or low-rank structure,
or analytic properties involving perturbations from some geometric or
algebraic structure.

I am particularly interested in eigenvalue problems and related topics.
Eigenvalue-based analysis methods are surprisingly powerful for several
reasons.  Eigenvalue problems arise naturally in the analysis of
differential equations by transform methods.  But eigenvalue problems
have much broader applications, too, largely because they among the few
nonlinear equations for which we have global solution methods, and
symmetric eigenvalue problems can be formulated as one of the few
non-convex optimization problems for which we have good general-purpose
methods.  In my work, I have explored eigenvalue problems to understand
everything from the difficulty of problems in [computer vision][vision],
to [how people form opinions][opinion],
to [how to cluster and rank in complex networks][graphspec],
to the impact of fabrication errors on [novel gyroscope designs][mrig].

Since my days as a PhD student, I have worked on structured
eigenvalue problems associated with certain PDE discretizations,
spectral methods for [model reduction][memsrom],
and methods of eigenvalue analysis
for [parameterized families of matrices][cis].
In more recent work, I have
focused on eigenvalue problems that arise in
[network-structured problems][graphspec],
eigenvalue problems for systems with underlying (approximate)
[symmetry groups][mrig],
and analysis techniques for [*nonlinear* eigenvalue problems][localize].

[vision]: {{ site.baseurl }}/blurbs/rotavg.html
[graphspec]: {{ site.baseurl }}/blurbs/graphspec.html
[opinion]: {{ site.baseurl }}/blurbs/opinion.html
[mrig]: {{ site.baseurl }}/blurbs/mrig.html
[localize]: {{ site.baseurl }}/blurbs/localize.html
[cis]: {{ site.baseurl }}/blurbs/cis.html
[memsrom]: {{ site.baseurl }}/blurbs/localize.html
