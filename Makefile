
cards.pdf : cards.tex
	(export TEXINPUTS=.:./images:; pdflatex --shell-escape cards.tex);

clean :
	rm -f cards.pdf

clobber :
	rm -f cards.pdf
	rm -f cards.log
	rm -f cards.aux
	rm -f cards.jpg
	rm -rf svg-inkscape
	rm -f images/*.eps

