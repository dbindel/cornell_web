---
title: AxFEM
image: lip_mode1.png
snippet: Fast simulation of near-axisymmetric resonant MEMS
menu:
  - text: BitBucket
    url: https://bitbucket.org/dbindel/axfem
  - text: Tutorials
    url: http://www.cs.cornell.edu/~bindel/sw/axfem/doc/tutorials/index.html
links:
  - text: White paper on HRGs
    url: http://www.northropgrumman.com/capabilities/hrg/documents/hrg.pdf
  - text: YouTube video describing HRGs
    url: https://www.youtube.com/watch?v=DFmOr1vMOT4
papers:
  - 2016-sensors
  - 2016-hh-workshop
  - 2013-sensors
talks:
  - 2015-03-cs-visit
  - 2014-09-gates-hrg
  - 2014-06-householder
  - 2014-04-oxford
  - 2014-01-umcp
  - 2013-11-utrc
  - 2013-11-brownbag
  - 2013-10-tufts
  - 2013-04-duke
  - 2012-12-fudan
  - 2012-12-fist
  - 2012-07-darpa
  - 2012-03-darpa
---

AxFEM is a semi-analytic finite element code designed to simulate
axisymmetric and nearly-axisymmetric vibrating structures, with a
special emphasis on micro-scale solid-wave gyroscopes.  It was written
by Erdal Yilmaz (Ph.D., 2016) and myself.  Our work was motivated by
analysis of micro-scale versions of the Hemispherical Resonator Gyro
(HRG) developed under the [DARPA MRIG][mrig] program and successors,
which had the goal of producing micro-machined versions of vibrating
structure.  Our goal was to understand what aspects of the design and
fabrication process would make such sensors most resistant to damping,
drift, and other infelicities.

While micro-machined solid wave gyroscopes promise cost savings of
several orders of magnitude over their conventional counterparts,
typical MEMS processing leads to significantly larger variations in
fabricated devices than one sees in standard HRGs.  Fortunately, these
variations are not completely arbitrary, but have structure inherited
from the nature of the fabrication steps.  Part of our goal with AxFEM
was to provide detailed understanding of how breaking the idealized
axisymmetric shape of the devices due to fabrication variation would
affect the ultimate performance of the device. Performing such
computational studies with fully-resolved three-dimensional finite
elements is prohibitively expensive, so combine an analytic
group-theoretic approach with finite element analysis to obtain an
accurate "2.5d" simulation framework.  Our results provided not only
predictions of the quality factors, gain factors, and design sensitivity
of several devices, but also a better understanding of the qualitative
features of different fabrication errors that would lead to performance
issues in devices.

[mrig]: http://www.darpa.mil/program/micro-technology-for-positioning-navigation-and-timing
