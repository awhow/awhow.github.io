.LP	Block paragraphs
.PP	First line of paragrph indented
.QP	Paragraph indented from both margins
.IP	Paragraph with hanging indent (list item)

.QP	Quoted paragrph
.QS/.QE	Can be used to start and end multi-paragraph quote blocks

.B	Bold
.I	Italic
.R	Roman
.UL	Underline

.DS [a]	Display start (I, [L]eft, [C]enter, [B]lock)
.DE	Display end
.ID	Same as `.DS I`, but floating
.LD	Same as `.DS L`, but floating
.CD	Same as `.DS C`, but bloating
.BD	Same as `.DS B`, but floating

.NH [n]	Numbered heading, n-level
.SH	Unnumbered heading

.TL	Title
.AU	Author
.AI	Author's Institution
.AB	Abstract start
.AE	Abstract end

HEADERS and FOOTERS
.ds LH <string> String for left header
.ds CH <string> String for center header
.ds RH <string> String for right header
.ds LF <string> String for left footer
.ds CF <string> String for center footer
.ds RF <string> String for right footer
