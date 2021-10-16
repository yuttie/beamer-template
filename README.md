# A "Cute" Theme for LaTeX Beamer


## Requirements
Compiler:
* (|p|up)LaTeX or LuaLaTeX

Packages:
* [beamer](https://ctan.org/pkg/beamer)
* [calc](https://ctan.org/pkg/calc)


## Build
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


## Usage
See `slides.tex`.
