.PHONY: all logo

VARIANTS = outline bold colored-outline colored-bold
FILES = $(foreach variant,${VARIANTS},generated/${variant}.svg)

all: logo

logo: ${FILES}

${FILES}: logo.typ base.typ
	typst c --font-path ./fonts --format=svg logo.typ --input variant=${basename ${notdir $@}} $@

.SECONDARY:
.DELETE_ON_ERROR:
