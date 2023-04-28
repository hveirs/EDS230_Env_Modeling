source(here("Assignment3", "almond_script2.R"))

calculate_profit <- function (baseline_profit = 20000, acres = 300, yield_anomaly, price_per_ton = 4000, cost_per_ton = 3950) {
  
  #calculate yield_anomaly using the almond_script
  yield_anomaly = calculate_almond_yield_anomaly(climate_data)
  
  #calculate the total_yield_anomaly of all the acres (in tons)
  total_yield_anomaly = yield_anomaly * acres
  
  #calculate the expected profit
  expected_profit = baseline_profit + (total_yield_anomaly * price_per_ton) - (total_yield_anomaly * cost_per_ton)
  
  return(expected_profit)
}

calculate_profit()



