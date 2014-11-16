flags = -shell-escape

default : all
all :
	pdflatex $(flags) updates.tex
evince :
	evince updates.pdf & 
clean :
	rm -rf *.aux *.log *.nav *.snm *.toc *.out 
