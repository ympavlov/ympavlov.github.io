# XHTML exported looks better than HTML. XHTML file has .html extension

FODT_FILES=$(shell find -name "*.fodt")

all: $(FODT_FILES)
	unoconv -f pdf $<
	unoconv -f docx $<
	unoconv -f xhtml $<

clean: $(FODT_FILES)
	rm -f $(<:.fodt=.pdf) $(<:.fodt=.docx) $(<:.fodt=.html)
	
