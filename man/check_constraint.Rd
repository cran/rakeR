% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prep_functions.R
\name{check_constraint}
\alias{check_constraint}
\title{check_constraint}
\usage{
check_constraint(constraint_var, num_zones)
}
\arguments{
\item{constraint_var}{The constraint table to check, usually a data frame}

\item{num_zones}{The number of zones that should be present in the table}
}
\value{
If no errors are detected the function returns silently. Any errors
will stop the function or script to be investigated.
}
\description{
Checks a constraint table for common errors.
}
\details{
Checks a constraint table for the following common errors:
\itemize{
  \item Ensures all zone codes are unique
  \item Ensures there are the expected number of zones
  \item Ensures all but the zone column are numeric (integer or double)
}
}
\examples{
cons <- data.frame(
"zone"      = letters[1:3],
"age_0_49"  = c(8, 2, 7),
"age_gt_50" = c(4, 8, 4),
"sex_f"     = c(6, 6, 8),
"sex_m"     = c(6, 4, 3)
)
check_constraint(cons, 3)  # no errors
}
