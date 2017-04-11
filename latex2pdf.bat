set /p id= "input the filename of latex without suffix: "
latex %id%.tex
bibtex %id%
latex %id%.tex
latex %id%.tex
dvips -Ppdf -G0 -tletter %id%.dvi
ps2pdf -dCompatibilityLevel#1.4 -dPDFSETTINGS#/prepress %id%.ps %id%.pdf