flags = -shell-escape
compiler = pdflatex

default : all
all : clean
	$(compiler) $(flags) updates.tex
	biber updates
	$(compiler) $(flags) updates.tex

evince :
	evince updates.pdf & 
push :
	./autocommit
clean :
	rm -rf *.aux *.log *.nav *.snm *.toc *.out *.blg *.bbl *.bcf *.dvi *.dvi *.pdf *.xml
