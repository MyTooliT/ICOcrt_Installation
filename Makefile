# -- Variables -----------------------------------------------------------------

OUTPUT_DIRECTORY := Bookdown
INDEX_FILE := ICOcrt_Installation_en.md
OUTPUT_NAME := ICOcrt_Installation_Documentation

HTML_FILE := $(OUTPUT_DIRECTORY)/$(OUTPUT_NAME).html

# =================
# = Documentation =
# =================

doc: html


html: $(HTML_FILE)


# Generate (GitBook) HTML document
$(HTML_FILE):
	Rscript -e "bookdown::render_book('$(INDEX_FILE)', 'bookdown::gitbook')"
	Rscript -e "file.rename('$(HTML_FILE)', '$(OUTPUT_DIRECTORY)/index.html')"