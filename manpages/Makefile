
MACRO=-man
PREPROC=tbl

SOURCEEXT=man
TARGETEXT=html

STYLESHEET=../style.css
STYLELINK=.HEAD <link rel="stylesheet" type="text/css" href="${STYLESHEET}">

SOURCES=$(wildcard *.$(SOURCEEXT))
OUTFILES=$(subst .$(SOURCEEXT),.$(TARGETEXT),$(SOURCES))


all: $(OUTFILES) index.html


%.txt: %.$(SOURCEEXT)
	tbl $< | nroff $(MACRO)

%.dvi: %.$(SOURCEEXT)
	cat $< | $(PREPROC) | troff $(MACRO) -Tdvi | grodvi > $@

%.ps: %.$(FILEEXT)
	cat $< | $(PREPROC) | troff $(MACRO) -Tps | grops > $@

%.pdf: %.ps
	 ps2pdf $<

%.html: %.$(SOURCEEXT)
	sed '1i $(STYLELINK)' $< | $(PREPROC) | troff $(MACRO) -Thtml | post-grohtml | sed 's/^<!--.*-->//' > $@

index.html: index.ms
	sed '1i $(STYLELINK)' $< | $(PREPROC) | troff -mwww -ms -Thtml | post-grohtml -l | sed 's/^<!--.*-->//' > $@

clean:
	rm -f *.dvi
	rm -f *.ps
	rm -f *.pdf
	rm -f *.html
