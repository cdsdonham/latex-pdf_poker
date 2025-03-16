# latex-pdf_poker

This code is still in development.

The images for the face cards were developed by:
1) Grabbing the face cards from the wikimedia pages.
2) Editting to remove everything but the actual image using inkscape.
3) Removing all instances of "text-decoration:none" from the svg files.
4) Using svg2tikz --codeoutput figonly to convert to tikzpicture code.
5) Wrapping the code in a newcommand; replacing the hard coded scale
factor with a parameter (#1), and searching for "cm," and "cm]" in the code
and replaceing with cm*#1, and cm*#1].  The issues here is that tikz
does not scale the line widths when the image scales, so I had to
adjust the line widths by the same scale factor as the image.
