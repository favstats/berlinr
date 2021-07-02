#' get_berlinerisch
#'
#' Translates German to Berlin dialect
#'
#'
#' @param txt provide a text you want to translate from German to Berlin dialect
#' @export
get_berlinerisch<- function(txt) {

  html <- rvest::session("http://parallelnetz.de/Berliner?phrase=")
  berlinform <- rvest::html_form(html)[[1]]

  berlinform_in <- rvest::html_form_set(berlinform, phrase = txt)

  resp <- rvest::html_form_submit(berlinform_in, submit = 1)

  fin <- rvest::read_html(resp) %>%
    rvest::html_table() %>%
    .[[1]] %>%
    .[2, 2] %>%
    stringr::str_replace("Ã\u009c", "Ü") %>%
    stringr::str_replace("Ã¼", "ü") %>%
    stringr::str_replace("Ã¤", "ä") %>%
    stringr::str_replace("Ã\u0084", "Ä") %>%
    stringr::str_replace("Ã¶", "ö") %>%
    stringr::str_replace("Ã\u0096", "Ö") %>%
    stringr::str_replace("Ã\u009f", "ß")

  return(fin)

}
