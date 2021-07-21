A "Cute" Theme for LaTeX Beamer
=================================


Requirements
------------
Compiler:
* LuaLaTeX

Packages:
* Beamer package
* fontspec package
* minted package

Fonts:
* Lato, Raleway and Inconsolata fonts

(optional) Japanese support:
* luatexja-fontspec package
* M+ fonts


Build
-----
You can compile the slides using the following command line:
```sh
lualatex -shell-escape slides
```
or with `latexmk`:
```sh
latexmk -pdf -pdflatex="lualatex -shell-escape" slides
```

For continuous build with `latexmk`, the following works:
```sh
latexmk -pvc -pdf -pdflatex="lualatex -interaction=nonstopmode -shell-escape" slides
```


Usage
-----
See `slides.tex`.


### Japanese Fonts
To use Japanese in your slides, you need to pass the `ja` option to the theme
package as follows:
```tex
\usetheme[ja]{cute}
```
