#' An example dataset for demonstrating the functions in mathR
#'
#'
#'
#' @format ## `example_data`
#'
#' A data frame with 9 rows and 5 columns:
#' \describe{
#'   \item{subject_id}{An integer denoting the subject id}
#'   \item{modular}{The value for m to mod the function of interest by}
#'   \item{maxdeg2_func}{Functions with a maximum degree of 2}
#'   \item{param_graph}{Parameters for the line_line_intersection function}
#'   \item{rand_func}{Random functions with any degree}
#' }
#'
#' @importFrom tibble tibble
#' @examples
#' example_data
#'
#' func <- example_data$maxdeg2_func[[1]]
#' paste0(func[1],"x^2 + ",func[2],"x + ",func[3])
#'
#' root_finding(func[1],func[2],func[3])
#'
#' param <- example_data$param_graph
#' line_line_intersection(param[1],param[2],param[3],param[4],
#'                         param[5],param[6],param[7],param[8],param[9])
#'
#' modular_arithmetic_for_function(example_data$rand_func[[1]],example_data$modular[2])
#'
"example_data"
