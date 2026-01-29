SOURCE ?= brand/templates/pdf-onepager.html
OUTPUT ?= output.pdf

.PHONY: setup-pdf pdf

setup-pdf:
	bash scripts/setup-pdf.sh

pdf:
	DYLD_FALLBACK_LIBRARY_PATH="/opt/homebrew/lib" python3 -c "\
	from weasyprint import HTML; \
	doc = HTML('$(SOURCE)'); \
	pages = doc.render().pages; \
	assert len(pages) == 1, f'Expected 1 page, got {len(pages)}'; \
	doc.write_pdf('$(OUTPUT)'); \
	print('Generated $(OUTPUT)')"
