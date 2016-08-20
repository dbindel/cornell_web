---
title: Scientific computing
image: bode2_final.png
snippet: |
  Computing answers that are right enough and fast enough.
---

> The purpose of computing is insight, not numbers.  
> -- <cite>[Richard Hamming][hamming]</cite>

> All models are wrong; some models are useful.  
> -- <cite>[George E. P. Box][box]</cite>

Scientific computing is about analyzing problems from engineering and
the sciences using computational models. The basic philosophy of the
area is to find solutions that are *right enough* to answer application
questions, with algorithms and implementations that are *fast enough* to
make the answers useful in practical situations. The area is
collaborative and interdisciplinary: to ask sensible questions and
include relevant physics requires application expertise; to design and
analyze solution algorithms requires mathematical expertise; and to
build software to perform the computation requires software expertise.
My own work emphasizes all three of these aspects. I enjoy formulating
mathematical models, identifying mathematical structure that can be
exploited in novel solution algorithms, and producing software packages
that others can use.

Scientific computing problems feature *approximation* across many
levels, from the model formulation and parameters to the solution
procedure to the use of floating point arithmetic.  To produce broadly
applicable software tools and algorithms, it is therefore necessary to
understand not only how much error might result from each specific
approximate step, but how to *compose* approximation methods.  Reasoning
is a creative exercise that involves identifying *structural features*
of the "true" answer should be maintained in order to reason about a
composition of approximate building blocks. This is the goal of error
analysis: not a tedious book-keeping exercise, but a fundamental part of
the *science* of scientific computing.

The main focus of work in scientific computing is
[using numerical linear algebra][nla] to solve a variety of
applications problems from mechanical and electrical engineering
and from within computer science.

[hamming]: https://en.wikipedia.org/wiki/Richard_Hamming
[box]: https://en.wikipedia.org/wiki/All_models_are_wrong
[nla]: {{ site.baseurl }}/blurbs/applied-nla.html
