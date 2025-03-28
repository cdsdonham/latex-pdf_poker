# Makefile for generating examples

cards.pdf : cards.tex pdf_poker.sty
	(export TEXINPUTS=.:./images:; pdflatex cards.tex);

images : images/image_jack_of_clubs.png \
	images/image_jack_of_diamonds.png \
        images/image_jack_of_hearts.png \
        images/image_jack_of_spades.png \
	images/image_king_of_clubs.png \
	images/image_king_of_diamonds.png \
	images/image_king_of_hearts.png \
	images/image_king_of_spades.png \
	images/image_queen_of_clubs.png \
	images/image_queen_of_diamonds.png \
	images/image_queen_of_hearts.png \
	images/image_queen_of_spades.png 

render.pdf : render.tex
	(export TEXINPUTS=.:./images:; pdflatex render.tex);

# Add:
#  <policy domain="coder" rights="read | write" pattern="PDF" />
# just before </policymap> in /etc/ImageMagick-7/policy.xml

images/image_jack_of_clubs.png : render.pdf
	convert -density 150 render.pdf[0] -trim +repage images/image_jack_of_clubs.png

images/image_jack_of_diamonds.png : render.pdf
	convert -density 150 render.pdf[1] -trim +repage images/image_jack_of_diamonds.png

images/image_jack_of_hearts.png : render.pdf
	convert -density 150 render.pdf[2] -trim +repage images/image_jack_of_hearts.png

images/image_jack_of_spades.png : render.pdf
	convert -density 150 render.pdf[3] -trim +repage images/image_jack_of_spades.png

images/image_king_of_clubs.png : render.pdf
	convert -density 150 render.pdf[4] -trim +repage images/image_king_of_clubs.png

images/image_king_of_diamonds.png : render.pdf
	convert -density 150 render.pdf[5] -trim +repage images/image_king_of_diamonds.png

images/image_king_of_hearts.png : render.pdf
	convert -density 150 render.pdf[6] -trim +repage images/image_king_of_hearts.png

images/image_king_of_spades.png : render.pdf
	convert -density 150 render.pdf[7] -trim +repage images/image_king_of_spades.png

images/image_queen_of_clubs.png : render.pdf
	convert -density 150 render.pdf[8] -trim +repage images/image_queen_of_clubs.png

images/image_queen_of_diamonds.png : render.pdf
	convert -density 150 render.pdf[9] -trim +repage images/image_queen_of_diamonds.png

images/image_queen_of_hearts.png : render.pdf
	convert -density 150 render.pdf[10] -trim +repage images/image_queen_of_hearts.png

images/image_queen_of_spades.png : render.pdf
	convert -density 150 render.pdf[11] -trim +repage images/image_queen_of_spades.png


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

addclean :
	rm -f cards.log
	rm -f cards.aux

