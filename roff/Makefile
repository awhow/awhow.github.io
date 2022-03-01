
MACRO=-ms
PREPROC=tbl

SOURCEEXT=ms
TARGETEXT=html

SOURCES=$(wildcard *.$(SOURCEEXT))
OUTFILES=$(subst .$(SOURCEEXT),.$(TARGETEXT),$(SOURCES))


all: $(OUTFILES)


%.txt: %.$(SOURCEEXT)
	tbl $< | nroff $(MACRO)

%.dvi: %.$(SOURCEEXT)
	cat $< | $(PREPROC) | troff $(MACRO) -Tdvi | grodvi > $@

%.ps: %.$(FILEEXT)
	cat $< | $(PREPROC) | troff $(MACRO) -Tps | grops > $@

%.pdf: %.ps
	 ps2pdf $<

%.html: %.$(SOURCEEXT)
	cat $< | $(PREPROC) | troff $(MACRO) -Thtml | post-grohtml > $@


clean:
	rm -f *.dvi
	rm -f *.ps
	rm -f *.pdf
	rm -f *.html
