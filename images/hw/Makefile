# Examples Makefile
#
# Type "make" to generate examples.pdf containing many examples.
# Type "make clean; make examples.ps" to invoke latex intead of pdflatex.
# Type "make <diag>.ps" to make a postscript file from <diag>.m4
# It may be necessary to type "make clean" before this or any of the following:
# Type "make <diag>.eps" to make an .eps file from <diag>.m4
# Type "make <diag>.svg" to make an .svg file from <diag>.m4 using pdf2svg
# The following require ImageMagick convert:
# Type "make <diag>.png" to make a .png file from <diag>.m4
# Type "make <diag>.tif" to make a .tif file from <diag>.m4
#
#       See also: the svg subdirectory for generating svg directly.
#
# To test the file test.m4, type "make tst" if boxdims is used, otherwise
# type "make tst1".  In either case the file tst.ps is created.
#
# To debug a single diagram in a directory other than this examples
# directory, copy this makefile and tst.tex to where you want to work,
# redefine LIBDIR (below) appropriately, and type "make <diag>.xxx"
# where xxx is one of ps, eps, png, or pdf

#########################################################################

# Circuit_macro directory, change this if necessary:
LIBDIR = ..
LIBDIR = $(HOME)/texmf-local/Circuit_macros

# The dpic processor:
PIC = $(HOME)/texmf-local/dpic/dpic

#MODE = -p
MODE = -g

#CONF = pstricks.m4
CONF = pgf.m4

# Uncomment for gpic.  Use gpic or pic as applicable on your machine:
# PIC = gpic
# PIC = pic
# MODE = -t
# CONF = gpic.m4

# Convert options
# IMv6 = /opt/local/bin
# MAGICK = $(IMv6)/convert 
IMv7 = /opt/local/lib/ImageMagick7/bin
MAGICK = $(IMv7)/magick
EPSOPTS =
PNGOPTS = -quiet -density 400 -scale 75% -alpha Remove
# PNGOPTS by sspors for SS2 notebooks
# PNGOPTS = -units PixelsPerInch -density 144 -resize 400

# If environment variable M4PATH has been set to the installation directory:
# M4 = m4
# Use Gnu M4 from Macports
M4 = gm4 -I $(LIBDIR)  # Use Gnu M4 from Macports


#########################################################################

DVIPSOPTS = -G0 -t letter
DIMFILE = 
BS = tr '|' '\134'

# Might be needed (change latex commands to $(LTX) )
# LTX = latex --shell-escape
LTX = pdflatex --shell-escape

PDFLTXSRC=printf "|input{~/Documents/courses/common/tikz-prefix.tex}\n\
|begin{document}|noindent|input{"$*".tex}|end{document}\n" | $(BS)

PGFSRC=printf "|input{~/Documents/courses/common/tikz-prefix.tex}\n\
|begin{document}|noindent|input{"$*".pgf}|end{document}\n" | $(BS)

LTXFILE=printf "|documentclass[11pt]{article}\n\
|usepackage[dvipsnames]{xcolor}\n\
|usepackage{times,boxdims,graphicx,pstricks}\n\
|usepackage{siunitx}\n\
|setlength{|textwidth}{28cm}|setlength{|textheight}{28cm}\n\
|setlength{|oddsidemargin}{0pt}|setlength{|evensidemargin}{0pt}\n\
|setlength{|hoffset}{-1cm}\n\
|pagestyle{empty}|thispagestyle{empty}\n\
|newbox|graph\n\
|begin{document}\n\
|noindent|input{"$*".tex}|box|graph\n\
|end{document}\n" | $(BS)

.SUFFIXES: .ps .dvi .tex .pgf .m4 .pic .eps .png .pdf .svg .tif .gif
.m4.pic:
	@touch $(DIMFILE) F_$*.dim
	$(M4) $(CONF) $(DIMFILE) F_$*.dim $*.m4 > $*.pic
.m4.tex:
	@touch $(DIMFILE) F_$*.dim
	$(M4) $(CONF) $(DIMFILE) F_$*.dim $*.m4 | $(PIC) $(MODE) > $*.tex
.m4.dvi:
	@touch $(DIMFILE) F_$*.dim
	$(M4) pstricks.m4 $(DIMFILE) F_$*.dim $*.m4 | $(PIC) -p > $*.tex
	@$(LTXFILE) > F_$*.tex
	latex --quiet F_$*
	touch F_$*.dim $(DIMFILE)
	$(M4) pstricks.m4 $(DIMFILE) F_$*.dim $*.m4 | $(PIC) -p > $*.tex
	latex --quiet F_$*
	mv F_$*.dvi $*.dvi
	rm -f F_*
.dvi.ps:
	dvips $(DVIPSOPTS) $* -o $*.ps
	chmod 644 $*.ps
.m4.ps:
	@touch $(DIMFILE) F_$*.dim
	$(M4) pstricks.m4 $(DIMFILE) F_$*.dim $*.m4 | $(PIC) -p > $*.tex
	@$(LTXFILE) > F_$*.tex
	latex --quiet F_$*
	dvips $(DVIPSOPTS) F_$* -o $*.ps
	chmod 644 $*.ps
	rm -f F_*
.m4.eps:
	@touch $(DIMFILE) F_$*.dim
	$(M4) pstricks.m4 $(DIMFILE) F_$*.dim $*.m4 | $(PIC) -p > $*.tex
	@$(LTXFILE) > F_$*.tex
	latex --quiet F_$*
	$(M4) pstricks.m4 $(DIMFILE) F_$*.dim $*.m4 | $(PIC) -p > $*.tex
	latex --quiet F_$*
	dvips F_$* -T128cm,28cm -o $*.ps
# Recent changes to PSTricks(?) have clashed with the use of TeXtoEPS
#  so use ps2epsi
	ps2epsi $*.ps $*.epsi
	sed -e '/%%Pages:/d' -e '/BeginPreview/,$$d' $*.epsi \
     | tr '\015' '\012' > $*.eps
	sed -e '1,/EndPreview/d' $*.epsi >> $*.eps
	rm -f F_*
.m4.pdf:
	@touch $(DIMFILE) F_$*.dim
	$(M4) pgf.m4 $(DIMFILE) F_$*.dim $*.m4 | $(PIC) -g > $*.tex
	@$(PDFLTXSRC) > F_$*.tex
	pdflatex --quiet F_$*
	$(M4) pgf.m4 $(DIMFILE) F_$*.dim $*.m4 | $(PIC) -g > $*.tex
	pdflatex --quiet F_$*
	mv F_$*.pdf $*.pdf
	rm -f F_*
.m4.png:
	make $*.pdf
	$(MAGICK) $*.pdf $(PNGOPTS) $*.png
	@if test -f $*.png.0 ; then mv $*.png.0 $*.png ; fi
#	rm $*.pdf
.m4.gif:
	make $*.pdf
	$(MAGICK) $*.pdf $(GIFOPTS) $*.gif
#	rm $*.pdf
.m4.tif:
	make $*.pdf
	$(MAGICK) $*.pdf $(EPSOPTS) $*.tif
	@if test -f $*.tif.0 ; then mv $*.tif.0 $*.tif ; fi
#	rm $*.pdf
.m4.svg:
	make $*.pdf
	dvisvgm --pdf $*.pdf $*.svg
#	rm $*.pdf
.pgf.pdf:
	@$(PGFSRC) > F_$*.tex
	pdflatex --quiet F_$*
	mv F_$*.pdf $*.pdf
	rm -f F_*
.pgf.png:
	make $*.pdf
	$(MAGICK) $*.pdf $(PNGOPTS) $*.png
.png.svg:
	make $*.pdf
	dvisvgm --pdf $*.pdf $*.svg
.pdf.png:
	# $(MAGICK) $*.pdf $(PNGOPTS) $*.png
	$(MAGICK) -density 300 -quality 100 $*.pdf $*.png
	# pdftocairo -png $*.pdf 

clean:
	@printf "\n clean:\n"
	rm -f core boxdims.tar.gz pics
	rm -f *.dvi *.aux *.log *.toc *.blg *.eps *.tif *.epsi eps *-mfpic* 
	rm -f fig*.tex $(PICS) *.roff *.int *.pic gpic.m4 test.tex xxx* *.fig 
	rm -f *.dim *.bak rotate.ps tst.ps *.bbl *-pics.ps
	rm -f *.tfm *[0-9]pk *.1 *.gif
	rm -f F_* Version.tex *stackdump *.ico
	rm -rf distfile distfile.tar.gz mode.tex
	rm -rf auto	
	@printf "\n"
