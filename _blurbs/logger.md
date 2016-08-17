---
title: Logger
image: journal.png
snippet: Python package for activity logging and to-do management
menu:
  - text: GitHub
    url: https://github.com/dbindel/logger
---

I know that I forget things.   This framework is my current attempt at
keeping track.  It is not perfect, but it is extensible.  The basic
entities are tasks, log entries, and notes.  All have a date, a
description, organizing tags, and an optional note.  Log entries also
have a time stamp, and optional end time or clock fields to track the
time spent.  All entries are stored in YAML files.  These can be edited
as text, and I keep them under version control.  There is also a command
line utility to manage the files.
