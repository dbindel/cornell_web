---
title: FEAP
image: Mesh_fem.jpg
snippet: |
  Extensions to an academic Finite Element Analysis Program
links:
  - text: FEAP
    url: http://www.ce.berkeley.edu/projects/feap/
blurbs:
  - matfeap
  - feap_io
---

FEAP is an academic Finite Element Analysis Program developed by
Bob Taylor in the civil engineering department at UC Berkeley,
and currently maintained by Bob Taylor and Sanjay Govindjee.
I used it as a graduate student, and contributed several modules,
including the memory management system and some of the graphics
interface.  I also developed a MATLAB interface (FEAPMEX) that
became rather popular -- as a Google search today will verify! --
but was hard to maintain.  I subsequently developed an alternate
interface, MATFEAP, which more cleanly separated FEAP from MATLAB
and was easier to maintain (Charlie Chen,
an M.Eng. student working with me, wrote a Python interface to FEAP
using the same protocol).

Starting in Fall 2016, I am advertising a [project](/meng.html) to build a
Jupyter notebook interface to the personal version of FEAP (FEAPpv)
to make it easy to use FEAP as an instructional tool by launching
cloud instances.  If you are interested reading this, let me know!
