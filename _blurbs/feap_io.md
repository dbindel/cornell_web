---
title: FEAP I/O patches
image: Mesh_fem.jpg
snippet: Better input handling in the FEAP finite element code
menu:
 - text: Tarball
   url: http://www.cs.cornell.edu/~bindel/cims/code/feap-io-patch.tar.gz
---

The [FEAP] finite element code presents a command line interface,
but there is no command history, and the interaction with the graphics
system was (at the time I wrote this) awkward.  These patches make
it possible to use `readline` for input, thus keeping a command history.
