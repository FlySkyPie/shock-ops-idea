#!/bin/bash
#title           :compiler.bash
#description     :This script used to build png images from svg.
#author          :FlySkyPie (Wei Ji)
#date            :2021-06-05
#version         :0.1.0
#usage           :bash compiler.bash
#requirement     :inkscape 1.0.2^
#notes           :--
#bash_version    :4.4.20(1)-release
#===============================================================================

svg_files=$(find "./src" -name '*.svg')

while read -r fname; do
    png_filename=$( echo $fname | sed "s|/src|/img|g")
    inkscape --export-type="png" --export-filename="${png_filename}.png" "${fname}"
done <<< "${svg_files}"
