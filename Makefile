.PHONY: all full onepage clean clean-all

all: full onepage

full: template.tex
	latexmk -usepretex='\newif\ifonepage \onepagefalse' -jobname='full' template.tex

onepage: template.tex
	latexmk -usepretex='\newif\ifonepage \onepagetrue' -jobname='resume' template.tex

clean:
	latexmk -jobname='full' -c
	latexmk -jobname='resume' -c
	latexmk -jobname='template' -c

clean-all:
	latexmk -jobname='full' -C
	latexmk -jobname='resume' -C
	latexmk -jobname='template' -C
