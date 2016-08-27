all: constitution_bylaws.pdf

constitution_bylaws.pdf: constitution_bylaws.tex articles/*.tex
	latexmk -dvi- -pdf -outdir=out constitution_bylaws.tex
	mv out/$@ .

.PHONY: all clean

clean:
	$(RM) constitution_bylaws.pdf
