# Makefile for generating examples

cards.pdf : cards.tex pdf_poker.sty
	(export TEXINPUTS=.:./images:; pdflatex cards.tex);

render.pdf : render.tex
	(export TEXINPUTS=.:./images:; pdflatex render.tex);

clean :
	rm -f cards.pdf
	rm -f render.pdf

clobber :
	rm -f cards.pdf
	rm -f cards.log
	rm -f cards.aux
	rm -f render.pdf
	rm -f render.log
	rm -f render.aux

