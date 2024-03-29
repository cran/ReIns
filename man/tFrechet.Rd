\name{tFrechet}
\alias{dtfrechet}
\alias{ptfrechet}
\alias{qtfrechet}
\alias{rtfrechet}
\encoding{UTF-8}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{
The truncated Frechet distribution
}
\description{
Density, distribution function, quantile function and random generation for the truncated Fréchet distribution.
}
\usage{
dtfrechet(x, shape, loc = 0, scale = 1, endpoint = Inf, log = FALSE)
ptfrechet(x, shape, loc = 0, scale = 1, endpoint = Inf, lower.tail = TRUE, log.p = FALSE)
qtfrechet(p, shape, loc = 0, scale = 1, endpoint = Inf, lower.tail = TRUE, log.p = FALSE)
rtfrechet(n, shape, loc = 0, scale = 1, endpoint = Inf)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
Vector of quantiles.
}
  \item{p}{
Vector of probabilities.
}
  \item{n}{
Number of observations.
}
  \item{shape}{
Shape parameter of the Fréchet distribution.
}
  \item{loc}{
Location parameter of the Fréchet distribution, default is 0.
}
  \item{scale}{
Scale parameter of the Fréchet distribution, default is 1.
}
  \item{endpoint}{
Endpoint of the truncated Fréchet distribution. The default value is \code{Inf} for which the truncated Fréchet distribution corresponds to the ordinary Fréchet distribution.
}
\item{log}{
  Logical indicating if the densities are given as \eqn{\log(f)}, default is \code{FALSE}.
 }
 \item{lower.tail}{
 Logical indicating if the probabilities are of the form \eqn{P(X\le x)} (\code{TRUE}) or \eqn{P(X>x)} (\code{FALSE}). Default is \code{TRUE.}
 }
  \item{log.p}{
  Logical indicating if the probabilities are given as \eqn{\log(p)}, default is \code{FALSE}.
 }
}
\details{
The Cumulative Distribution Function (CDF) of the truncated Fréchet distribution is equal to
\eqn{F_T(x) = F(x) / F(T)} for \eqn{x \le T} where \eqn{F} is the CDF of an ordinary Fréchet distribution and \eqn{T} is the endpoint (truncation point) of the truncated Fréchet distribution.
}
\value{
\code{dtfrechet} gives the density function evaluated in \eqn{x}, \code{ptfrechet} the CDF evaluated in \eqn{x} and \code{qtfrechet} the quantile function evaluated in \eqn{p}. The length of the result is equal to the length of \eqn{x} or \eqn{p}.

\code{rtfrechet} returns a random sample of length \eqn{n}.
}

\author{
Tom Reynkens.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link[=pfrechet]{Fréchet}},  \code{\link[stats]{Distributions}}
}
\examples{
# Plot of the PDF
x <- seq(1, 10, 0.01)
plot(x, dtfrechet(x, shape=2, endpoint=5), xlab="x", ylab="PDF", type="l")

# Plot of the CDF
x <- seq(1, 10, 0.01)
plot(x, ptfrechet(x, shape=2, endpoint=5), xlab="x", ylab="CDF", type="l")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{distribution}

