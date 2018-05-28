all:
	pdflatex pathspider-tutorial.tex
	bibtex pathspider-tutorial
	pdflatex pathspider-tutorial.tex
	pdflatex pathspider-tutorial.tex
