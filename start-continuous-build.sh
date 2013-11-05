#!/bin/sh

latexmk -pvc -pdf -pdflatex="lualatex -interaction=nonstopmode -shell-escape" "$@"
