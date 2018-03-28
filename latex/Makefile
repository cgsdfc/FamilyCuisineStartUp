LATEXMK ?= latexmk
VIEWER ?= evince
MV ?= mv
CP ?= cp
RM ?= rm
MKDIR ?= mkdir -p
LATEXMK_FLAGS = -xelatex
MAIN_SOURCE = plan.tex
MAIN_PDF = $(patsubst %.tex,%.pdf,$(MAIN_SOURCE))
MAIN_LOG = $(patsubst %.tex,%.log,$(MAIN_SOURCE))
CHAPTER_SOURCE = $(foreach x,1 2 3 4 5 6 7 8 9, $(wildcard chapter$(x).tex))
APPENDIX_SOURCE = appendices.tex
COVER_SOURCE = cover.tex
NAME = 15061084-冯聪-爱厨艺亲子主题餐饮.pdf
V ?= 0
ifeq ($(V),0)
	LATEXMK_FLAGS += -silent
endif
# Turn on time-saving external tikzpicture
LATEXMK_FLAGS += -shell-escape
EXTERNAL_DIR = $(shell pwd)/external

.PHONY: pdf all clean clean-all view debug rename

all: pdf

pdf: $(MAIN_SOURCE) $(CHAPTER_SOURCE) $(COVER_SOURCE) $(APPENDIX_SOURCE)
	@$(MKDIR) $(EXTERNAL_DIR)
	@$(LATEXMK) $(LATEXMK_FLAGS) $<

clean:
	@$(LATEXMK) -c

clean-all:
	@$(LATEXMK) -C
	@$(RM) -rf $(EXTERNAL_DIR)

view: pdf
	@$(VIEWER) $(MAIN_PDF)

rename: pdf
	@$(CP) $(MAIN_PDF) $(NAME)

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
	@echo "V is $(V)"
	@echo "MV is $(MV)"
	@echo "NAME is $(NAME)"
	@echo "EXTERNAL_DIR is $(EXTERNAL_DIR)"

