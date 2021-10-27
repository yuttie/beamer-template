@default_files = ('slides');
$pdf_mode = 4;

# Common options for LaTeX engines
$common_opts = '';

# Uncomment the following line to enable draft mode
#$pre_tex_code = '\PassOptionsToClass{draft}{beamer}';

# Command for pdflatex ($pdf_mode = 1)
$pdflatex = "pdflatex $common_opts %O %P";

# Command for latex with dvipdf ($pdf_mode = 3)
$latex    = "uplatex $common_opts %O %P";
$dvipdf   = 'dvipdfmx %O -o %D %S';

# Command for lualatex ($pdf_mode = 4)
$lualatex = "lualatex $common_opts %O %P";

# Command for xelatex ($pdf_mode = 5)
$xelatex = "xelatex $common_opts %O %P";

# BibTeX
$bibtex = 'bibtex';
