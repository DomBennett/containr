#' @name available
#' @title Look-up available programs for installation
#' @description Returns a data.frame listing all available external programs
#' that can be installed with \code{containr}.
#' @param pattern REGEX to limit returns
#' @details Limit the names of programs returned using the \code{pattern}
#' argument.
#' @return data.frame
#' @family user
available <- function(pattern=NULL) {
  NULL
}

#' @name details
#' @title Look-up details on program
#' @description Prints to console detailed information on program available for
#' installation such as build status, version number, maintainer and program
#' notes.
#' @param id Program ID
#' @return NULL
#' @family user
details <- function(id) {
  # build_status
  NULL
}

#' @name details
#' @title Look-up details on program
#' @description Prints to console detailed information on program available for
#' installation such as build status, version number, maintainer and program
#' notes.
#' @param id Program ID
#' @return NULL
#' @family user
install <- function(id) {
  if (!is_docker_available()) {
    stop('Docker is not available. Have you installed it? And is it running?')
  }
  if (!build_status(id = id)) {
    mntnr <- sub(pattern = '/.*', replacement = '', x = id)
    msg <- paste0('Sorry, it looks like [', id, '] is not passing',
                  ' -- will not attempt to build on your system.',
                  'Try contacting [', mntnr, '] for help.')
    stop(msg)
  }
  devtools::install_github(repo = id)
}

#' @name remove
#' @title Uninstall and remove a program
#' @description Uninstalls a program and removes it from your docker
#' @param id Program ID
#' @details If program is successfully removed from your Docker, TRUE is
#' returned else FALSE.
#' @return Logical
#' @family user
remove <- function(id) {
  NULL
}
