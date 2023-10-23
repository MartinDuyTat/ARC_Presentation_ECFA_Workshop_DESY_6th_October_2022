#!/bin/bash
#f=ARC_Presentation_ECFA_Workshop_DESY_6th_October_2022
#f=ARC_Presentation_CEPC_Workshop_27th_October_2022
#f=ARC_Presentation_DD4HEPIntro_15th_December_2022
#f=ARC_Presentation_FCC_Workshop_Krakow_25th_January_2023
f=ARC_Presentation_FCC_ImplementationDiscussion_24th_October_2023
if pdflatex $f.tex
then
  pdflatex $f.tex
  for post in aux log out toc snm nav
  do
    rm $f.${post}
  done
fi
