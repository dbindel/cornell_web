---
title: Parallel Surrogate Optimization
image: rosenbrock.png
last_update: 2016-08-15
snippet: |
  Asynchronous parallel algorithms for finding minima fast by fitting
  functions to surrogate models.
links:
  - text: "POAP: Python Optimization Asynchronous Plumbing"
    url: https://pypi.python.org/pypi/POAP
  - text: "PySOT: Surrogate Optimization Toolbox"
    url: https://pypi.python.org/pypi/pySOT
talks:
  - 2015-03-siam-cse
  - 2014-09-scan
---

Surrogate methods (also called response surface methods) fit a model
function (the surrogate) to the objective function based on data
sampling.  The surrogate model is then used to guide where the algorithm
should sample next.  Our Python Surrogate Optimization Toolbox (PySOT)
implements several parallel surrogate optimization methods on a variety
of computing platforms, using our package of Python Optimization
Asynchronous Plumbing (POAP) to handle the details of asking workers
for function evaluations.  Our methods support asynchronous parallel
execution, which is of particular interest when it is possible to get
potentially incomplete function information (e.g. upper or lower bounds)
at much less expense than a full function evaluation.