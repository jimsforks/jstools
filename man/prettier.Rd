% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prettier.R
\name{prettier}
\alias{prettier}
\alias{prettier_file}
\alias{prettier_js}
\alias{prettier_css}
\alias{prettier_options}
\title{Prettier - opinionated code formatter.}
\usage{
prettier_file(input, options = prettier_options(), output = NULL)

prettier_js(code, options = prettier_options())

prettier_css(code, options = prettier_options())

prettier_options(...)
}
\arguments{
\item{input}{Path to one or more JavaScript or CSS files.}

\item{options}{Options for terser, see \url{https://prettier.io/docs/en/options.html }.}

\item{output}{Path where to write optimized code.}

\item{code}{Character vector where each element represent a line of JavaScript code.}

\item{...}{Other options to use, see \url{https://prettier.io/docs/en/options.html} for details.}
}
\value{
a \code{character}.
}
\description{
Prettier is an opinionated code formatter. It enforces a
 consistent style by parsing your code and re-printing it with its own
 rules that take the maximum line length into account, wrapping code when necessary.
}
\examples{

# Format JavaScript code:
prettier_js(
  "foo(reallyLongArg(), omgSoManyParameters(),
   IShouldRefactorThis(), isThereSeriouslyAnotherOne());"
)

# or CSS
prettier_css("b{font-weight: bold;color:red;}")

# With a file
path <- system.file("testfiles/htmlwidgets.js", package = "jstools")
prettier_file(input = path)
}
