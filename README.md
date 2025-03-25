# latex-pdf_poker

Draw playing cards in a pdf friendly way (no need for pstricks,
no need for shell-escape).

The package has two modes.  In the default mode, pre-rendered
png files are used for the face cards.  In the "rendered" mode,
the face cards are drawn using tikz code.  Using rendered mode
is significantly slower than using the pre-rendered versions.

To use the package, you need the pdf_poker.sty file and all of 
the files in the images directory.

The images for the face cards were developed by:
1) Grabbing the face cards (SVG) from the wikimedia pages.
2) Editting to remove everything but the actual image using inkscape.
3) Removing all instances of "text-decoration:none" from the svg files.
4) Using svg2tikz --codeoutput figonly to convert to tikzpicture code.
5) Wrapping the code in a newcommand; replacing the hard coded scale
factor with a parameter (#1), and searching for "cm," and "cm]" in the code
and replaceing with cm*#1, and cm*#1].  The issues here is that tikz
does not scale the line widths when the image scales, so I had to
adjust the line widths by the same scale factor as the image.
