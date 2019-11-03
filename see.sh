#!/bin/bash

filename="tempfile"${RANDOM}".temporary"
pdftotext $1 $filename -layout
vim $filename && rm $filename
