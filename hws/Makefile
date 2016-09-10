# Rmd files in homework subdirectories
RMDS = $(wildcard */*)

# output html files
HTMLS = $(patsubst %.Rmd, %.html, $(RMDS))
PDFS = $(patsubst %.Rmd, %.pdf, $(RMDS))

.PHONY: clean


all: $(PDFS)

# Run every Rmd file
%.html: %.Rmd
	Rscript -e "library(rmarkdown); render('$<')"


clean:
	rm -rf $(PDFS)
