Package: pdf_poker

Maintainer: C. Donham

2025-03-26

The package pdf_poker provides a standard deck of playing cards
containing 52 cards.  The goal was to support for playing cards that
did not depend on ps-tricks and did not need the "shell-escape"
flag to pdf_latex.  This package is useful when using ps-tricks
is incompatible with other packages or options that are needed
by a document.

There are two modes for pdf_poker.  The default option uses graphicx
and pre-rendered images for the face cards.  In this mode, pdf_poker
loads the graphicx package.  The optional "render" flag causes
pdf_poker to draw all of the face card images using tikz.  Using the
render flag is significantly slower than using the pre-rendered
images.  In all cases, the tcolorbox package is used to frame the
cards and the fontenc package is used to access the fonts needed.

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
