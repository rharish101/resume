# This file is part of Harish's Resume.
#
# Copyright (C) 2019  Harish Rajagopal <harish.rajagopals@gmail.com>
#
# Harish's Resume is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Harish's Resume is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Harish's Resume.  If not, see <https://www.gnu.org/licenses/>.
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
