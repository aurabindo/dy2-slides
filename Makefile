SRC := main
AD_BIN = $(shell which asciidoctor.ruby2.1)

all:
	@$(AD_BIN) -T ./asciidoctor-reveal.js/templates/slim $(SRC).adoc
	@echo "$(SRC).html generated."

clean:
	@rm -rf  $(SRC).html
	@echo "$(SRC).html removed."
