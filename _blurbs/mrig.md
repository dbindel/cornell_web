---
title: Solid-wave MEMS gyroscopes
image: gyro-standalone.png
last_update: 2013-07-01
snippet:
  Building simulation tools to understand the challenges in
  miniaturizing the current gyro-of-choice for space applications.
  Success means
  <a href="http://muppet.wikia.com/wiki/Pigs_in_Space">MEMS IN
  SPACE</a>!
latest:
- <a href="#">Imperfections in Solid-Wave Gyroscope
  Dynamics</a>
  (with Erdal Yilmaz, IEEE SENSORS 2013, to appear)
- Gyros in a <a href="/present/fist-dec12.pdf">CAD for MEMS</a> talk
  at FIST 2012.
---

Solid-wave hemispherical resonator gyroscopes (HRGs) have become the
gyroscope of choice for satellites and other spacecraft.  G. H. Bryan
worked out the relevant physics in 1890 in order to describe the
beating sound produced by a ringing wine glass placed on a turntable.
Coriolis forces break the symmetry between how waves travel clockwise
and counter-clockwise: similar to the Doppler effect, elastic waves
appear to travel faster or slower depending on the direction in which
they travel relative to the rotation.  As a result, the "shape" of
vibration patterns in the non-inertial reference frame, which we can
think of as arising from interference of waves traveling clockwise and
counterclockwise, rotates counter the frame rotation.  The total
rotation of the shape measures the total rotation of the gyroscope.

To design precision MEMS solid-wave gyroscopes similar to the HRG, we
need to understand how microfabrication problems affect device
performance.  We tackle this by using both fast finite element
simulations and qualitative techniques to reason about what types of
fabrication issues we expect and how they might influence these
sensors.
