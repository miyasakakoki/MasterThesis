MES=

.PHONY: all
all:
	${MAKE} thesis.pdf
	git add . && git commit -m "${MES}"

thesis.pdf: *.tex images/*.png
	platex -shell-escape thesis.tex
	platex -shell-escape thesis.tex
	platex -shell-escape thesis.tex
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
