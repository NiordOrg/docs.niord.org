#!/bin/bash

DOCUMENT=publications.adoc

if [ "$1" = "pdf" ]; then
   asciidoctor-pdf $DOCUMENT -D . -a imagesdir=images/
   exit
elif [ "$1" = "html" ]; then
   asciidoctor $DOCUMENT -D .
   exit
else
	echo Unknown target: "$1"
	echo Valid targets are:
fi

echo "  pdf        Generates documentation in pdf"
echo "  html       Generates documentation in html"

