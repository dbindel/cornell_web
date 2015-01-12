---
title: M.Eng. project ads
layout: main
---

If you are interested in these projects, email me and we'll talk about
it.  If you have a project idea of your own, we can talk about that, too.

## The CMS experiment

The [Compact Muon Solenoid (CMS)][cms] experiment is a large particle
physics detector built on the Large Hadron Collidor at CERN.  At this
point, so many users are working on this experiment that there is a
strong need not only to mine experimental data, but also to mine data
about users and user activity.  CS MEng students may be interested
in [some data mining projects out of Cornell physics][cmswiki] related
to these projects.  If so, please contact Valentin Kuznetsov or Peter
Wittich for further details -- but you can likely talk me into being
your CS field representative.

[cms]: http://cms.web.cern.ch/
[cmswiki]: https://wiki.classe.cornell.edu/CMS/CMSDataMining

## PageRank with Uncertain Edge Weights

Consider a graph with known topology but with random edge weights
(possibly with known mean values plus some noise uncertainty).  Under
what conditions can we efficiently characterize the distribution of
the PageRank vector in such a graph?  I have some methods that may
help make this efficient, but would love help working out the details.

To work on this course, you should have a good grounding in
probability and at least the standard linear algebra course.

## Etch-a-sketch 3D

Learn to build 3D visualizations using
[XTK](https://github.com/xtk/X#readme),
built on HTML5, SVG, and WebGL, and help me attach those simulations
to an existing simulator for etch-based MEMS fabrication!  Depending
on your interests, this project could focus on:

 - Designing a user interface to couple the visualization to an online
   mask editing environment
 - Integration with [iPython
   notebooks](http://ipython.org/ipython-doc/dev/interactive/htmlnotebook.html)
 - The simulation engine, which is based on fast marching methods
   (used in graphics and vision applications as well as in scientific
   computing)
 - More sophisticated etch simulation methods that include
   diffusion-limited etch scenarios

## Optimizing social networks

In a [recent paper](paper/focs11-opinions-full.pdf), Jon Kleinberg, Sigal Oren,
and I studied social cost in a simple model of opinion formation in a social
network.  As part of this research, we asked some about the "best" edges to
add to a social network in order to minimize the social cost of the equilibrium
opinion.  Our results mostly established that variants of this problem are
NP-hard, but I am curious about how well continuous optimization methods
do on these problems in practice.

To work on this project, you should have undergrad courses in linear algebra
and scientific computing, and you should be familiar with MATLAB.

## Language technology for matrix computations

I have worked on several little tools for optimizing the evaluation of
matrix expressions using a simple MATLAB-like language.  These include
a source-to-source translator called
[Matexpr](http://www.cs.cornell.edu/~bindel/cims/matexpr/) that
compiles C/C++ programs augmented with simple fixed-size expressions
into ordinary C++, and a system embedded in one of my finite element
code that applies common transformations appropriate for sparse
matrices and identifies common subexpressions that can be memoized.
I would like to combine these tools and extend them with annotations
of structural features that can be used for optimized code generation.

To work on this project, you should have some knowledge of compilers
and of matrix computations.

## Automating floating point error analysis

Floating point error analysis of simple expressions is a standard
topic in introductory scientific computing courses.  Unfortunately,
such analyses can be tedious and error prone.  Fortunately, we know
how to automate some of this tedium -- at least in principle.  I would
like to make a package for symbolic rounding error analysis, along
with a set of demonstrations suitable for a first course in scientific
computing.

To work on this project, you should have at least an introductory
course in numerical analysis.
