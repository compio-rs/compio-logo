.PHONY: all logo

VARIANTS = outline bold colored-outline colored-bold
FILES = $(foreach variant,${VARIANTS},generated/${variant}.svg)

all: logo demo.pdf

logo: ${FILES}

${FILES}: logo.typ base.typ
	typst c --format=svg logo.typ --input variant=${basename ${notdir $@}} $@

demo.pdf: demo.typ base.typ
	typst c demo.typ

.SECONDARY:
.DELETE_ON_ERROR:
