all: pdf html status clean

pdf:
	pdflatex -halt-on-error -jobname ocaml-book src/main.tex
	pdflatex -halt-on-error -jobname ocaml-book src/main.tex

html:
	mkdir -p ocaml-book-full
	hevea -o ocaml-book-full/ocaml-book-full.html styles/misc.hva src/main.tex -I . -I styles

status:
	pdflatex -halt-on-error -jobname status status/status.tex

clean_all: clean
	rm -f ocaml-book.pdf
	rm -f ocaml-book-full -r
	
clean:
	rm -f *.log *.aux *.toc
