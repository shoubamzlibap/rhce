#!/bin/bash

# see https://groups.google.com/forum/#!topic/asciidoc/3jqED4Ud3Tk
a2x $1 -f pdf --fop --xsltproc-opts="-param ulink.show 1" notes.txt
a2x -f xhtml notes.txt
