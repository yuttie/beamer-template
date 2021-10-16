# A "Cute" Theme for LaTeX Beamer


## Requirements
Compiler:
* (|p|up)LaTeX or LuaLaTeX

Packages:
* [beamer](https://ctan.org/pkg/beamer)
* [calc](https://ctan.org/pkg/calc)


## Usage

### LuaLaTeX
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

### LaTeX
Similarly, the following should work:
```sh
latex -shell-escape slides && latex -shell-escape slides && dvipdfmx slides
latexmk -pdfdvi -latex="latex -shell-escape" slides
latexmk -pvc -pdfdvi -latex="latex -shell-escape" slides
```

As of October 2021, the `latex` command produces slides without decorations,
though Japanese engines `platex` and `uplatex` work fine.


## Example
See `slides.tex`.
