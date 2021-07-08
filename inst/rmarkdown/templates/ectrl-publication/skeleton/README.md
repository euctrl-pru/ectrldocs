# Initial setup

The following steps are necessary steps if you created your document in RStudio
via 'R Markdown...' -> 'From Template'.

1. Rename `template_selected_name>.Rmd` to `index.Rmd`.
1. Rename `xyzzy.Rprj` to the name of your project/document.

# Organization of the directory

The document is organized as follows:

1. `index.Rmd` is the initial file: change title, author(s), description, github URL,
   repo and cover image accordingly.
2. The `rmd_files` list in `_bookdown.yml` defines the Chapters that compose the document
3. The file `_output.yml` defines the different output formats that are supported:
   - HTML: there are two formats, `bs4_book` (nice Bootstrap 4 based) and `gitbook`
     (the classical `bookdown` format)
   - PDF
   - MS Word (work in progress)
1. The publications or resources cited in the document are to be listed in `bibliography.bib`.
1. Usually the preparation of a document is managed as an RStudio project.
   There is a `.Rproj` file for this.
1. The various `.Rmd` files contain examples of what can be achieved in R Markdown.
1. The file `_common.R` contains R code that is run at the beginning of the generation of every
   `.Rmd` file. Adapt it to your needs: it typically load the packages you use or sets common
   preferences.
1. The `utils.R` contains functions used to manage the book.
