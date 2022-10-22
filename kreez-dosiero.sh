#!/usr/bin/env bash

set -eo pipefail

dosiero=$1

if [[ $dosiero == "pdf" ]]; then
	pandoc parti/*.md \
		--metadata-file=metadata.yaml \
		--toc --toc-depth=2 \
		--standalone \
		--pdf-engine=weasyprint \
		-o pdf/kustuma-vorti.pdf
else
	exit 1
fi

