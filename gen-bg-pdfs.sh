#!/bin/sh

for f in background.svg background_title.svg; do
  inkscape $f --export-pdf=${f%.svg}.pdf --export-area-page
done
