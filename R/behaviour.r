#' Encapuslate default behaviour.
#'
#' Roxygen defaults to using all subclasses of \code{\link{Tag}},
#' and all processors (\code{$process[A-Z].*}) and writers
#' (\code{$writer[A-Z].*}) defined in the roxygen package.
#'
#' @dev
default_behaviour <- function() {
  new("RoxyBehaviour", 
    tags = base_tags(),
    processors = local_apropos("^process[A-Z]"),
    writers = local_apropos("^writer[A-Z]")
  )
}

manual_behaviour <- function(tags = character(), processors = character(), writers = character()) {
  new("RoxyBehaviour", 
    tags = tags,
    processors = processors,
    writers = writers
  )
}