CV_FILES=\
	awards.tex \
	pick5.tex journal.tex conf.tex report.tex \
	teaching.tex \
	service.tex \
	member.tex \
	students-phd.tex students-masters.tex students-ugrad.tex \
	thesis-committee.tex

PDF=cv.pdf cornellcv.pdf selected.pdf research.pdf

.PHONY: all clean distclean

all: $(PDF)

cv.pdf: cv.tex $(CV_FILES)
	pdflatex cv.tex
	pdflatex cv.tex

cornellcv.pdf: cornellcv.tex $(CV_FILES)
	pdflatex cornellcv.tex
	pdflatex cornellcv.tex

selected.pdf: selected.tex $(CV_FILES)
	pdflatex selected.tex
	pdflatex selected.tex

research.pdf: research.tex references.bib
	pdflatex research.tex
	bibtex research
	pdflatex research.tex
	pdflatex research.tex

journal.tex: allrefs.bbl journal.txt
	awk -f ncite.awk allrefs.bbl journal.txt > journal.tex

conf.tex: allrefs.bbl conf.txt
	awk -f ncite.awk allrefs.bbl conf.txt > conf.tex

report.tex: allrefs.bbl report.txt
	awk -f ncite.awk allrefs.bbl report.txt > report.tex

pick5.tex: allrefs.bbl journal.txt
	awk -f ncite.awk allrefs.bbl pick5.txt > pick5.tex

allrefs.aux: journal.txt conf.txt report.txt pick5.txt
	awk -f xcite.awk journal.txt conf.txt report.txt > allrefs.aux

allrefs.bbl: allrefs.aux references.bib
	bibtex allrefs

references.bib: ../../_bibliography/references.bib
	tail -n +3 $< > $@

clean:
	rm -f *.aux cv.log cv.out allrefs.blg

distclean: clean
	rm -f $(PDF)
