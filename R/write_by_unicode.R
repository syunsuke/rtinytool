#' write by unicode
#'
#' to chage non ascii character into unicode
#'
#' @param char char vector
#'
#' @return non print string into stdout
#' @importFrom magrittr %>%
#' @export
write_by_unicode <- function(char){

  writeLines("c(")

  for(i in char){

    tmp_char <- stringi::stri_escape_unicode(i)

    sprintf('  "%s",\t\t# "%s"', tmp_char, i) %>% writeLines()

  }

  writeLines(")")
}
