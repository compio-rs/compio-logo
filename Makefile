main.pdf: main.tex
	latexmk -lualatex $^

logo-0.png logo-1.png &: main.pdf
	convert $^ logo.png

.SECONDARY:
.DELETE_ON_ERROR:
