default: all

all: pdf

pdf:
	asciidoctor-pdf -d article ./design.adoc -D ./

html:
	asciidoctor ./design.adoc

xml:
	asciidoctor -v -b docbook ./design.adoc

clean:
	rm -f *.pdf *.xml *.html
