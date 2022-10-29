#!/usr/bin/env bash

set -eo pipefail

dosiero=$1

if [[ $dosiero == "pdf" ]]; then
	pandoc parti/*.md \
		--metadata-file=metadata.yaml \
		--toc --toc-depth=2 \
		--standalone \
		--pdf-engine=weasyprint \
		-o dosieri/mikra-vortaro.pdf
elif [[ $dosiero == "epub" ]]; then
	pandoc parti/*.md \
		--metadata-file=metadata.yaml \
		--toc --toc-depth=2 \
		--standalone \
		-o dosieri/mikra-vortaro.epub
else
	exit 1
fi

