---
title: Rotation averaging
image: camera.jpg
snippet: |
  How hard is it to combine pictures to understand scene geometry?
papers:
  - 2016-rotations
---

Many millions of tourists visit Rome each day, and many of them take
pictures.  How hard is it to reconstruct the three-dimensional geometry
of famous Roman landmarks from these pictures?  A key subproblem in such
a reconstruction is figuring out how the camera was oriented in space
when each picture was taken.  This is the problem of *rotation
averaging*: given estimates of the *relative* rotations between the
cameras for many pairs (or triplets) of images, how can we assign camera
rotations for each image in a way that is most consistent with the data?
In our work, we explore the *local convexity* of such problems by making
novel use of techniques from spectral graph theory.
