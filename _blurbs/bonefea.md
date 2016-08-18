---
title: BoneFEA
image: femur.jpg
snippet: Finite element analysis of human bones
links:
  - text: ON Diagnostics
    url: http://ondiagnostics.com/
talks:
  - 2010-04-bone
  - 2008-04-courant
---

BoneFEA is a finite element code for simulation of human bone, written
as the result of a consulting project for [ON Diagnostics][ond]
together with [Panos Papadopolous][panos].  From finite element models
derived from CT scan data, BoneFEA predicts how a patients' bones might
fail under loading conditions.  BoneFEA serves as a replacement for the
ABAQUS software previously used by [ON Diagnostics][ond], but with  several
unusual material models, such as models for plasticity with anisotropic
yield surfaces, and application-specific solvers.  I wrote the software
itself (about 12000 lines of C++ and 1400 lines of support scripts), and
also designed a geometric multigrid solver used in the system.

[panos]: http://www.me.berkeley.edu/people/faculty/panayiotis-papadopoulos
[ond]: http://ondiagnostics.com/
