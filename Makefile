all: diffHicUG.pdf output.pdf compile.tar.gz

compile.tar.gz: diffHicUG.tex 
	tar -czf $@ $< Bioconductor2.sty unsrturl.bst plots-ug/

diffHicUG.pdf: diffHicUG.tex
	pdflatex $<
	bibtex diffHicUG
	pdflatex $<
	pdflatex $<

output.pdf: diffHicUG.pdf
	Rscript transferUG.R $< $@
