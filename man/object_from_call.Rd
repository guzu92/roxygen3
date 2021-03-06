% Built by roxygen3 0.1
\name{object_from_call}
\alias{object_from_call}
\title{[DEV] Given a call that modifies the R environment, find the object that
it creates.}
\usage{
  object_from_call(call, env, srcref)
}
\arguments{
  \item{call}{unevaluated function call}

  \item{env}{environment in which to evaluate function call}
}

\value{
a list giving the \code{name} and \code{value} of the object
  that the call creates.  \code{NULL} is returned if the call doesn't
  modify the package environment in a way that roxygen recognises.
}
\description{
This function is aimed primarily at developers extending this package.
You shouldn't need to use it for everyday operation.

Given a call that modifies the R environment, find the object that
it creates.
}
\details{
\code{object_from_call} works in a pseudo-S3 manner - given a call like
\code{f(a, b, c)} it will call \code{object_from_call.f}.
}
\examples{
a <- 1
object_from_call(quote(a <- 1), environment())
}

\keyword{internal}
