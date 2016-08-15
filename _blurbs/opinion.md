---
title: Opinions as game theory
image: metabolic.png
last_update: 2012-07-01
snippet: |
  In the game of expressing our opinions, we all want to both follow
  our beliefs and agree with our friends.  Analyzing Nash
  equilibria yields interesting insights.  Eigenvalues are involved!
papers:
  - 2015-geb
  - 2011-focs
talks:
  - 2012-10-nycam
---

How do we form opinions?  In economics and sociology, the opinions
held by individuals are often modeled as numerical values; people
arrive at a shared opinion by repeatedly averaging their opinion with
the opinions of neighgors in a social network.  But in real life,
consensus is rarely reached.  Motivated by this observation, we study
a related model in which individuals' intrinsic beliefs counterbalance
the averaging process and yield a diversity of opinions.

By interpreting the repeated averaging as best-response dynamics in an
underlying game with natural payoffs, and the limit of the process as
an equilibrium, we are able to study the cost of disagreement in these
models relative to a social optimum.  We provide a tight bound on the
cost at equilibrium relative to the optimum; our analysis draws a
connection between these agreement models and extremal problems that
lead to generalized eigenvalues.  We also consider a natural network
design problem in this setting: which links can we add to the
underlying network to reduce the cost of disagreement at equilibrium?
