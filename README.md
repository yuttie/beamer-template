A "Strong" Theme for LaTeX Beamer
=================================


Requirements
------------
* Beamer package
* LuaLaTeX


Build
-----
You can compile the slide using the following command line:
```sh
lualatex -shell-escape slide
```
or with `latexmk`:
```sh
latexmk -pdf -pdflatex="lualatex -shell-escape" slide
```

For continuous build with `latexmk`, the following works:
```sh
latexmk -pvc -pdf -pdflatex="lualatex -interaction=nonstopmode -shell-escape" slide
```
