PDFLATEX = xelatex
DIPLOMA_REPORT_PDF = diploma_report
BIBTEX = bibtex
MAKEINDEX = makeindex
RM = rm -f


all: $(DIPLOMA_REPORT_PDF).pdf

fast: *.tex ../*.tex ../*.bib
	latexmk -pdf -xelatex $(DIPLOMA_REPORT_PDF)


$(DIPLOMA_REPORT_PDF).pdf: *.tex ../*.tex ../*.bib
	$(PDFLATEX) $(DIPLOMA_REPORT_PDF)
	$(MAKEINDEX) $(DIPLOMA_REPORT_PDF).nlo -s nomencl.ist -o $(DIPLOMA_REPORT_PDF).nls
	$(BIBTEX) $(DIPLOMA_REPORT_PDF).aux
	# Used for master paper only
	# $(BIBTEX) My.aux
	$(PDFLATEX) $(DIPLOMA_REPORT_PDF)
	$(PDFLATEX) $(DIPLOMA_REPORT_PDF)
	# Citations count fixing
	$(PDFLATEX) $(DIPLOMA_REPORT_PDF)

cleanall: clean
	$(RM)  *.pdf

.PHONY: clean cleanall
clean:
	$(RM) *.aux *.log *.out *.toc *.gz *.gz\(busy\) *.blg *.bbl *.nlo *.nls *.fls *.xdv *.fdb_latexmk *.ilg
