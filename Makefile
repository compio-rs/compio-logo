.PHONY: all logo

all: logo demo.pdf

logo: generated/blue-fill.svg generated/dark-stroke.svg generated/dark-fill.svg

generated/blue-fill.svg generated/dark-stroke.svg generated/dark-fill.svg: logo.typ base.typ
	typst c --format=svg logo.typ --input variant=${basename ${notdir $@}} $@

demo.pdf: demo.typ base.typ
	typst c demo.typ

.SECONDARY:
.DELETE_ON_ERROR:
