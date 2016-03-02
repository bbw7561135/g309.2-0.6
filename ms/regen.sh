#!/bin/sh

# Check that command line arg is valid tex file
# otherwise use paper-tycho.tex
if [ -e "${1}.tex" ]
then
    arg=$1
else
    arg="text"
fi

echo "Compiling ${arg}.tex"

# Run bibtex if multiple command line args are given
# (second arg can be gibberish string)
if [ "$#" -eq 2 ]
then
    pdflatex "${arg}.tex" 
    bibtex $arg
    pdflatex "${arg}.tex" 
    pdflatex "${arg}.tex" 
fi

pdflatex "${arg}.tex"
#open "${arg}.pdf"
