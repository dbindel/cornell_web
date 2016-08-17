---
title: POAP
image: rosenbrock.png
snippet: Python for Optimization with Asynchronous Plumbing
menu:
  - text: PyPI
    url: https://pypi.python.org/pypi/POAP
  - text: GitHub
    url: https://github.com/dbindel/POAP/
---

POAP is an infrastructure package to support optimization
methods for expensive function interfaces.  Function evaluations
are carried out by workers (which may be local threads or remote
processes) at the behest of a controller, with communication by
TCP, MPI, or local message queues.  The controller exposes these
resources to strategies, which can be composed in various ways;
for example, composing a standard optimization strategy with a
retry strategy can make the optimizer robust to worker failures.
POAP is the underlying substrate for [PySOT].

[PySOT]: http://www.cs.cornell.edu/~bindel/blurbs/pysot.html
