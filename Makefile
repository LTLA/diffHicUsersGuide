all: diffHicUG.pdf output.pdf compile.tar.gz

compile.tar.gz: diffHicUG.tex 
	tar -czf $@ $< Bioconductor2.sty unsrturl.bst plots-ug/ refhic.bib

diffHicUG.pdf: diffHicUG.tex
	pdflatex $<
	bibtex diffHicUG
	pdflatex $<
	pdflatex $<

