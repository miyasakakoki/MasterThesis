
thesis.pdf: *.tex 
	platex thesis.tex
	platex thesis.tex
	dvipdfmx thesis.dvi

.PHONY: clean
clean:
	rm *.log *.dvi *.aux *.toc

.PHONY: allc
allc:
	${MAKE} all
	git add .
	git commit -m ""

.PHONY: allcp
allcp:
	${MAKE} allc
	git push
