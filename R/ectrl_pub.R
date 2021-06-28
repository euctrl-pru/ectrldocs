#' Create a new directory with the specified publication template
#'
#' This function creates a new directory under the current directory, which will
#' contain the given files of the specified template, ready to be rendered.
#'
#' @param dirname name of the directory to create. If not specified, a directory
#' \emph{new-dir} will be created.
#' @param template which template to use?
#'
#' @details
#' The available templates are: \emph{eurocontrol-publication} (default).
#' (Others could be added later.)
#' The name of the main \code{.Rmd} file will be \emph{index.Rmd}.
#'
#' @examples
#' \dontrun{
#' create_ectrl_pub(dirname = "tmp_dir")
#' }
#'
#' @export
create_ectrl_pub = function(dirname = "new-dir", template = "ectrl-publication") {
   # check input
   temp = match.arg(template, c("ectrl-publication"))

   # create directory
   if (dir.exists(dirname)) {
      stop(paste0("There is already a directory `", dirname,
                  "`. Please specify a different directory name"))
   }
   dir.create(dirname)

   template.dir = system.file(
      file.path("rmarkdown", "templates", "ectrl-publication", "skeleton"),
      package = "ectrldocs")
   files.to.copy = list.files(template.dir)
   file.copy(
      file.path(template.dir, files.to.copy),
      file.path(dirname),
      recursive = TRUE)
   file.rename(file.path(dirname, "skeleton.Rmd"), file.path(dirname, "index.Rmd"))
}
