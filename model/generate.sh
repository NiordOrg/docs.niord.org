#!/bin/bash

if [ "$1" = "pdf" ]; then
   asciidoctor-pdf model.adoc -D . -a imagesdir=images/
   exit
elif [ "$1" = "html" ]; then
   asciidoctor model.adoc -D .
   exit
else
	echo Unknown target: "$1"
	echo Valid targets are:
fi

echo "  pdf        Generates documentation in pdf"
echo "  html       Generates documentation in html"

