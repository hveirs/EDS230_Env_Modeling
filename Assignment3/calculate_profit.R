source(here("Assignment3", "almond_script_2.R"))


#' Calculate Profit
#'
#' @param climate_data a data frame containing daily climate observations of: minimum and maximum temperature in °C, and precipitation in mm 
#' @param baseline_profit The expected profit (in US dollars) given a typical almond yield (i.e. no anomaly)
#' @param acres The number of acres of almond trees (in acres)
#' @param price_per_ton The selling price of a ton of almonds (dollars/ton)
#' @param cost_per_ton The cost of producing a ton of almonds (dollars/ton)
#'
#' @return
#' @export
#'
#' @examples calculate_profit(climate_data = climate_data, baseline_profit = 19000, acres = 250)
#' 

calculate_profit <- function (climate_data, baseline_profit = 20000, acres = 300, price_per_ton = 4000, cost_per_ton = 3950) {
  
  #calculate yield_anomaly using the almond_script
  yield_anomaly = calculate_almond_yield_anomaly(climate_data)
  
  #calculate the total_yield_anomaly of all the acres (in tons)
  total_yield_anomaly = yield_anomaly * acres
  
  #calculate the expected profit
  expected_profit = baseline_profit + (total_yield_anomaly * price_per_ton) - (total_yield_anomaly * cost_per_ton)
  
  return(expected_profit)
}



