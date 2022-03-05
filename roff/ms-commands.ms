.TL
MS Macro Commands
.PP
 .LP	Block paragraphs
.br
 .PP	First line of paragrph indented
.br
 .QP	Paragraph indented from both margins
.br
 .IP	Paragraph with hanging indent (list item)

.PP
 .QP	Quoted paragrph
.br
 .QS/.QE	Can be used to start and end multi-paragraph quote blocks

.PP
 .B	Bold
.br
 .I	Italic
.br
 .R	Roman
.br
 .UL	Underline

.PP
 .DS [a]	Display start (I, [L]eft, [C]enter, [B]lock)
.br
 .DE	Display end
.br
 .ID	Same as `.DS I`, but floating
.br
 .LD	Same as `.DS L`, but floating
.br
 .CD	Same as `.DS C`, but bloating
.br
 .BD	Same as `.DS B`, but floating

.PP
 .NH [n]	Numbered heading, n-level
.br
 .SH	Unnumbered heading

.PP
 .TL	Title
.br
 .AU	Author
.br
 .AI	Author's Institution
.br
 .AB	Abstract start
.br
 .AE	Abstract end

.SH
HEADERS and FOOTERS
.PP
 .ds LH <string> String for left header
.br
 .ds CH <string> String for center header
.br
 .ds RH <string> String for right header
.br
 .ds LF <string> String for left footer
.br
 .ds CF <string> String for center footer
.br
 .ds RF <string> String for right footer
