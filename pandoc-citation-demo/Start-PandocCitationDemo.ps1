New-Item -ItemType Directory .\output

# Note the list of bibliographic items,  Biblatex-Tester-EdtfFull.bib, is referenced from within TestBibliography.md Metadata.

# Many of the command line options can be used within document metadata, and visa versa.

pandoc TestBibliography.md --from markdown --to html5 --template jlb-default.html5 --filter pandoc-citeproc --csl jlb-chicago-mos17-mod.csl --output .\output\TestBibliography.xhtml 

@"
Done ...
###########################################################################################

".\output\TestBibliography.xhtml"
"@
