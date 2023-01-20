# My LaTeX Beamer Template

If you want to know what the template looks like, please look at [sample.pdf](sample.pdf).

## Requirements
Compiler:
* (|p|up)LaTeX or LuaLaTeX or XeLaTeX

Packages:
* [beamer](https://ctan.org/pkg/beamer)
* [calc](https://ctan.org/pkg/calc)


## Usage
See the sample `slides.tex`.


## Building sample slides
Here, we describe various ways to compile the `slides.tex` included in the
repository.

Please note that `-shell-escape` flag is specified in the following examples
because `minted` package is used in the sample slides.
You can omit the flag if you do not use such a package.

In addition, you need to add 'dvipdfmx' class option when using LaTeX engine
other than lualatex or xelatex.


### Simple way
```sh
latex -shell-escape slides && dvipdfmx slides
lualatex -shell-escape slides
xelatex -shell-escape slides
```


### With latexmk
You can also compile the sample with `latexmk`:

```sh
latexmk -pdfdvi -latex='latex -shell-escape' slides
latexmk -pdflua -pdflualatex='lualatex -shell-escape' slides
latexmk -pdfxe -pdfxelatex='xelatex -shell-escape' slides
```

For continuous building, the following works:
```sh
latexmk -pvc -pdfdvi -latex='latex -interaction=nonstopmode -halt-on-error -shell-escape' slides
latexmk -pvc -pdflua -pdflualatex='lualatex -interaction=nonstopmode -halt-on-error -shell-escape' slides
latexmk -pvc -pdfxe -pdfxelatex='xelatex -interaction=nonstopmode -halt-on-error -shell-escape' slides
```


### With latexmk + provided latexmkrc
You can configure latexmk with `latexmkrc` file.
The repository includes a sample `latexmkrc`.

For one-time compile:
```sh
latexmk -pdfdvi
latexmk -pdflua
latexmk -pdfxe
```

For continuous building:
```sh
latexmk -pvc -pdfdvi
latexmk -pvc -pdflua
latexmk -pvc -pdfxe
```

draft mode + continuous typesetting
```sh
latexmk -pvc -pdfdvi -pretex='\PassOptionsToClass{draft}{beamer}'
latexmk -pvc -pdflua -pretex='\PassOptionsToClass{draft}{beamer}'
latexmk -pvc -pdfxe -pretex='\PassOptionsToClass{draft}{beamer}'
```


## Tips
You can specify different output name by passing a job name to `latexmk`.
For instance, running the following command line would produces `abc.pdf`:
```sh
latexmk -jobname=abc -pdflua
```

`latexmk` recognizes some options which are passed to engines without processing by `latexmk`.
Here is an example set of such flags:
```sh
latexmk -pdflua -interaction=nonstopmode -halt-on-error -file-line-error -shell-escape -synctex=1
```

Or, you can specify options via `$common_opts` in `latexmkrc`:
```perl
$common_opts = '-interaction=nonstopmode -halt-on-error -file-line-error -shell-escape -synctex=1'
```
