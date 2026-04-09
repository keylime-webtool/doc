LATEXTOPDF=pdflatex
PROGRAM=Keylime-Monitoring-Dashboard-Stakeholders
MV=mv

all: $(PROGRAM).pdf

$(PROGRAM).pdf:
	$(LATEXTOPDF) 000-keylime-monitoring-stakeholders.tex
	$(LATEXTOPDF) 000-keylime-monitoring-stakeholders.tex
	$(MV) 000-keylime-monitoring-stakeholders.pdf $(PROGRAM).pdf
clean:
	rm -frv *.aux *.nav *.out *.toc *.log *.snm *.vrb *.xdv *~
clobber:
	rm -frv *.aux *.nav *.out *.toc *.pdf *.log *.snm *.vrb *.xdv *~
test:
	$(LATEXTOPDF) -draftmode 000-keylime-monitoring-stakeholders.tex

.PHONY: all $(PROGRAM).pdf clean clobber test
