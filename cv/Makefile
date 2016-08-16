cv.pdf: cv.tex journal.tex conf.tex report.tex
	pdflatex cv.tex
	pdflatex cv.tex

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
	rm -f *.aux cv.log cv.out cv.pdf
