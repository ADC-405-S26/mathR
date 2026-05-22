#' Conversion from the U.S. customary length and weight units to SI units (meter and kilogram)
#'
#' @param x A single positive numerical value
#' @param unit A U.S. customary unit type for length and weight
#'
#' @returns A unit conversion of the input x in the U.S. customary unit to SI unit, meter for length and kilogram for weight
#' @export
#'
#' @examples
#' unit_conversion(120, 'lb')
unit_conversion <- function(x, unit){
  if(unit == 'in'){
    in_meter<- x* 0.0254
    sprintf("The input value is %.2f in inch and is %.2f in meter.", x, in_meter)
  } else if (unit == 'ft'){
    in_meter<- x*0.3048
    sprintf("The input value is %.2f in ft and is %.2f in meter.", x, in_meter)
  } else if (unit == 'yd'){
    in_meter <- x*0.9144
    sprintf("The input value is %.2f in yd and is %.2f in meter.", x,in_meter)
  } else if(unit == 'mi'){
    in_meter <- x*1609.344
    sprintf("The input value is %.2f in mi and is %.2f in meter.", x, in_meter)
  } else if(unit == 'lb'){
    in_kg <- x*0.4536
    sprintf("The input value is %.2f in lb and is %.2f in kg.", x, in_kg)
  } else if(unit == 'oz'){
    in_kg <- x*0.02835
    sprintf("The input value is %.2f in oz and is %.2f in kg.", x, in_kg)
  } else if(unit == 'short_ton'){
    in_kg <- x*907.2
    sprintf("The input value is %.2f in short ton and is %.2f in kg.", x, in_kg)
  }

}
