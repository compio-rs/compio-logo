.PHONY: all logo

VARIANTS = outline\
           bold\
           bold-with-text\
           colored-bold\
           colored-outline\
           colored-with-text

FILES = $(foreach v,${VARIANTS},generated/${v}.svg)

all: logo

logo: ${FILES}

${FILES}: logo.typ base.typ
	typst c --font-path ./fonts --format=svg logo.typ --input variant=${basename ${notdir $@}} $@

.SECONDARY:
.DELETE_ON_ERROR:
