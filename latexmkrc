@default_files = ('slides');
$pdf_mode = 4;

# For pdflatex ($pdf_mode = 1)
$pdflatex = 'pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -shell-escape -synctex=1 %O %S';

# For latex with dvipdf ($pdf_mode = 3)
$latex    = 'uplatex -interaction=nonstopmode -halt-on-error -file-line-error -shell-escape -synctex=1 %O %S';
$dvipdf   = 'dvipdfmx %O -o %D %S';

# For lualatex ($pdf_mode = 4)
$lualatex = 'lualatex -interaction=nonstopmode -halt-on-error -file-line-error -shell-escape -synctex=1 %O %S';

# For xelatex ($pdf_mode = 5)
$xelatex = 'xelatex -interaction=nonstopmode -halt-on-error -file-line-error -shell-escape -synctex=1 %O %S';

# BibTeX
$bibtex = 'bibtex';
