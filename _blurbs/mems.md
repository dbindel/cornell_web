---
title: MEMS simulation
image: diskdie2.png
snippet: |
  Computational tools for analyzing micro-electro-mechanical systems (MEMS)
links:
  - text: Micro-gyroscope simulations
    url: http://www.cs.cornell.edu/~bindel/mrig.html
  - text: Simulating damping in RF-MEMS
    url: http://www.cs.cornell.edu/~bindel/hiqlab.html
  - text: System-level MEMS simulation by modified nodal analysis RF-MEMS
    url: http://www.cs.cornell.edu/~bindel/sugar.html
---

Micro-electro-mechanical systems (MEMS) are micron-scale machines used
in everything from accelerometers to digital projectors.  Resonating
MEMS are critical to many everyday gadgets -- without MEMS
resonators, your iPhone would not know when to switch from landscape
to portrait mode!  I work on simulation tools to help engineers design
these types of devices.

Broadly speaking, my MEMS work has involved three different types of
devices.  Early in my Ph.D., I worked on SUGAR, a simulator
inspired in name and style by the SPICE family of circuit simulators.
SUGAR is useful for understanding *system-level* models involving
many interacting electrical devices or structural elements.  For a
deeper understanding of the physics individual devices and structures,
it is useful to build detailed [finite element][fea] models.
During the latter part of my Ph.D. work, I built finite element models
to understand the damping of very high-frequency resonators (RF-MEMS)
intended for use in cell phone signal processing applications;
this study involved not only some beautiful linear algebra related
to structured eigenvalue problems, but also demonstrated some
previously-unsuspected mode interference mechanisms that significantly
impact device design.  At Cornell, I worked with
Erdal Yilmaz (Applied Physics Ph.D., 2016) on finite element simulations
of micro-scale solid-wave gyroscopes; here, too, our work yielded both
novel eigenvalue analysis methods and some fundamental, practical
insights about types of fabrication issues most likely to cause
issues with sensor drift.

[fea]: {{ site.baseurl }}/blurbs/fea.html
