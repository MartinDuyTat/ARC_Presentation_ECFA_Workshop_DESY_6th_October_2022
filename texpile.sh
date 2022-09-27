#!/bin/bash
f=ARC_Presentation_ECFA_Workshop_DESY_6th_October_2022
if pdflatex $f.tex
then
  pdflatex $f.tex
  for post in aux log out toc snm nav
  do
    rm $f.${post}
  done
fi
