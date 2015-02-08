flags = -shell-escape
compiler = pdflatex

default : all
all :
	$(compiler) $(flags) updates.tex
evince :
	evince updates.pdf & 
push :
	./autocommit
clean :
	rm -rf *.aux *.log *.nav *.snm *.toc *.out 
