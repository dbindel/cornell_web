CV_FILES=\
	awards.tex \
	journal.tex conf.tex report.tex \
	teaching.tex \
	service.tex \
	member.tex \
	students-phd.tex students-masters.tex students-ugrad.tex \
	thesis-committee.tex

.PHONY: all clean distclean

all: cv.pdf cornellcv.pdf

cv.pdf: cv.tex $(CV_FILES)
	pdflatex cv.tex
	pdflatex cv.tex

cornellcv.pdf: cornellcv.tex $(CV_FILES)
	pdflatex cornellcv.tex 
	pdflatex cornellcv.tex 

journal.tex: allrefs.bbl journal.txt
	awk -f ncite.awk allrefs.bbl journal.txt > journal.tex

conf.tex: allrefs.bbl conf.txt
	awk -f ncite.awk allrefs.bbl conf.txt > conf.tex

report.tex: allrefs.bbl report.txt
	awk -f ncite.awk allrefs.bbl report.txt > report.tex

allrefs.aux: journal.txt conf.txt report.txt
	awk -f xcite.awk journal.txt conf.txt report.txt > allrefs.aux

allrefs.bbl: allrefs.aux references.bib
	bibtex allrefs

references.bib: ../../_bibliography/references.bib
	tail -n +3 $< > $@

clean:
	rm -f *.aux cv.log cv.out allrefs.blg

distclean: clean
	rm -f cv.pdf
