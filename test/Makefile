SOURCE=test.ms
TARGET=test

MACRO=-mwww -ms

PREPROC=tbl

default: html


ascii: $(SOURCE)
	tbl $(SOURCE) | nroff $(MACRO)

dvi: $(TARGET).dvi

ps: $(TARGET).ps

pdf: $(TARGET).pdf

html: $(TARGET).html


$(TARGET).dvi: $(SOURCE)
	cat $(SOURCE) | $(PREPROC) | troff $(MACRO) -Tdvi | grodvi > $(TARGET).dvi

$(TARGET).ps: $(SOURCE)
	cat $(SOURCE) | $(PREPROC) | troff $(MACRO) -Tps | grops > $(TARGET).ps

$(TARGET).pdf: $(TARGET).ps
	 ps2pdf $(TARGET).ps

$(TARGET).html: $(SOURCE)
	cat $(SOURCE) | $(PREPROC) | troff $(MACRO) -Thtml | post-grohtml -l > $(TARGET).html


clean:
	rm -f $(TARGET).dvi
	rm -f $(TARGET).ps
	rm -f $(TARGET).pdf
	rm -f $(TARGET).html
