.PHONY: all full onepage clean clean-all

all: full onepage

full: template.tex
	latexmk -usepretex='\newif\ifonepage \onepagefalse' -jobname='resume' template.tex

onepage: template.tex
	latexmk -usepretex='\newif\ifonepage \onepagetrue' -jobname='onepage' template.tex

clean:
	latexmk -jobname='resume' -c
	latexmk -jobname='onepage' -c

clean-all:
	latexmk -jobname='resume' -C
	latexmk -jobname='onepage' -C
