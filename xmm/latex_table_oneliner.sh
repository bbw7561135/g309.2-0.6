#!/bin/bash

# PERLLLLLLL ONE-LINERRRSSSSSS
perl -e 'print `cat $_` . "  % File $_\n" for split(/\s+/, `ls -1 *_row.tex`);'
# No I will not play golf now