LATEXMK ?= latexmk
VIEWER ?= evince
LATEXMK_FLAGS = -xelatex
MAIN_SOURCE = plan.tex
MAIN_PDF = $(patsubst %.tex,%.pdf,$(MAIN_SOURCE))
MAIN_LOG = $(patsubst %.tex,%.log,$(MAIN_SOURCE))
CHAPTER_SOURCE = $(foreach x,1 2 3 4 5 6 7 8 9, $(wildcard chapter$(x).tex))
APPENDIX_SOURCE = appendices.tex
COVER_SOURCE = cover.tex
.PHONY: pdf all clean clean-all view debug

all: pdf

pdf: $(MAIN_SOURCE) $(CHAPTER_SOURCE) $(COVER_SOURCE) $(APPENDIX_SOURCE)
	@$(LATEXMK) $(LATEXMK_FLAGS) $<

clean:
	@$(LATEXMK) -c

clean-all:
	@$(LATEXMK) -C

view: pdf
	@$(VIEWER) $(MAIN_PDF)
log:
	@$(EDITOR) $(MAIN_LOG)
debug:
	@echo "LATEXMK is $(LATEXMK)"
	@echo "VIEWER is $(VIEWER)"
	@echo "LATEXMK_FLAGS is $(LATEXMK_FLAGS)"
	@echo "MAIN_SOURCE is $(MAIN_SOURCE)"
	@echo "MAIN_PDF is $(MAIN_PDF)"
	@echo "CHAPTER_SOURCE is $(CHAPTER_SOURCE)"
	@echo "MAIN_LOG is $(MAIN_LOG)"
	@echo "EDITOR is $(EDITOR)"
