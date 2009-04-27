# FMSPy - Copyright (c) 2009 Andrey Smirnov.
#
# See COPYRIGHT for details.

# Path to epydoc executable
EPYDOC?=epydoc

all: unittest

# Run unit-tests using trial (Twistd)
unittest:
	trial fmspy

# Build source-code docs using EpyDoc
docs:
	mkdir -p docs/api/
	epydoc --output=docs/api/ -v --html --graph=all fmspy

# Source-code tags
tags:
	ctags -R --exclude=docs

.PHONY: docs unittest tags