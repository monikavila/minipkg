#' Time function
#'
#' @param language Language to use, "es" o "en".  Default is "es"
#'
#' @returns A string with the current time.
#' @export
#'
#' @examples
#' what_time()
#' what_time("en")
what_time <- function(language = "es") {

  rlang::arg_match0(language, c("es", "en"))

  time <- format(Sys.time(), "%H:%M")

  exclamation <- praise::praise("${Exclamation}")

  switch(
    language,
    es = sprintf("%s! Ahora son las %s!", exclamation, time),
    en = sprintf("%s! It is %s now!", exclamation, time)
  )
}
