#!/bin/sh

latexmk -pvc -pdf -pdflatex="pdflatex -interaction=nonstopmode -shell-escape"
