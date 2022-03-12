
MACRO=-man
PREPROC=tbl

SOURCEEXT=man
TARGETEXT=html

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
	cat $< | $(PREPROC) | troff $(MACRO) -Thtml | post-grohtml | sed 's/^<!--.*-->//' > $@

index.html: index.ms
	cat $< | $(PREPROC) | troff -mwww -ms -Thtml | post-grohtml -l | sed 's/^<!--.*-->//' > $@

clean:
	rm -f *.dvi
	rm -f *.ps
	rm -f *.pdf
	rm -f *.html
