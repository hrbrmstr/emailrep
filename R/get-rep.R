#' Get email reputation
#'
#' @param email the email to get rep for
#' @param ... passed on to [httr::GET()]
#' @export
#' @examples
#' email_rep("bill@@microsoft.com")
email_rep <- function(email, ...) {

  httr::GET(
    url = sprintf("https://emailrep.io/%s", email[1]),
    .EMAILREP_UA,
    ...
  ) -> res

  httr::stop_for_status(res)

  out <- httr::content(res, as = "text", encoding = "UTF-8")
  out <- jsonlite::fromJSON(out)

  out

}