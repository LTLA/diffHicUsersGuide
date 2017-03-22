all: diffHicUG.pdf output.pdf

diffHicUG.pdf: diffHicUG.tex
	pdflatex $<
	bibtex diffHicUG
	pdflatex $<
	pdflatex $<

output.pdf: diffHicUG.pdf
	Rscript transferUG.R $< $@
