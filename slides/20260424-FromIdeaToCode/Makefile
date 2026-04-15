LATEXTOPDF=pdflatex
PROGRAM=From-Idea-To-Code
MV=mv

all: $(PROGRAM).pdf

$(PROGRAM).pdf:
	$(LATEXTOPDF) 000-from-idea-to-code.tex
	$(LATEXTOPDF) 000-from-idea-to-code.tex
	$(MV) 000-from-idea-to-code.pdf $(PROGRAM).pdf
clean:
	rm -frv *.aux *.nav *.out *.toc *.log *.snm *.vrb *.xdv *~
clobber:
	rm -frv *.aux *.nav *.out *.toc *.pdf *.log *.snm *.vrb *.xdv *~
test:
	$(LATEXTOPDF) -draftmode 000-from-idea-to-code.tex

.PHONY: all $(PROGRAM).pdf clean clobber test
