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

  if (!language %in% c("es", "en")) {
    stop("Either choose 'es' or 'en' as a language.")
  }

  time <- format(Sys.time(), "%H:%M")

  switch(
    language,
    es = sprintf("¡Ahora son las %s!", time),
    en = sprintf("It is %s now!", time)
  )

}
