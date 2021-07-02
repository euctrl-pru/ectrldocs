The document is organized as follows:

1. `index.Rmd` ( eventually rename `<name you selected in RStudio 'R Markdown...' -> 'From Template'>.Rmd`)
2. the `rmd_files` list in `_bookdown.yml` defines the Chapters that compose the document
3. The file `_output.yml` defines the different output formats that are supported:
   - HTML: there are two formats, `bs4_book` (nice Bootstrap 4 based) and `gitbook`
     (the classical `bookdown` format)
   - PDF
   - MS Word (work in progress)
1. the publications or resources cited in the document are to be listed in `bibliography.bib`
1. usually the preparation of a document is managed as an RStudio project, rename `xyzzy.Rprj`
   to the name of your project/document.
1. the various `.Rmd` files contain examples of what can be achieved in R Markdown.
1. the file `_common.R` contains R code that is run at the beginning of the generation of every
   `.Rmd` file. Adapt it to your needs: it typically load the packages you use or sets common
   preferences.
1. the `utils.R` contains functions used to manage the book.
