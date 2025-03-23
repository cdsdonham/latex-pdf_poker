# Makefile for generating examples

cards.pdf : cards.tex pdf_poker.sty
	(export TEXINPUTS=.:./images:; pdflatex --shell-escape cards.tex);

clean :
	rm -f cards.pdf

clobber :
	rm -f cards.pdf
	rm -f cards.log
	rm -f cards.aux

