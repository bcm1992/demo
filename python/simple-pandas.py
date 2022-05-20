import pandas as pd

source_data_city = [
  {"City Name":"New York City", "State":"NY", "Temp":71},
  {"City Name":"Los Angeles", "State":"CA", "Temp":74},
  {"City Name":"Honolulu", "State":"HI", "Temp":85},
  {"City Name":"Phoenix", "State":"AZ", "Temp":94},
  {"City Name":"San Francisco", "State":"CA", "Temp":64},
  {"City Name":"San Diego", "State":"CA", "Temp":69}
]
source_data_state = [
  {"State":"AZ", "State Name":"Arizona"},
  {"State":"CA", "State Name":"California"},
  {"State":"CO", "State Name":"Colorado"},
  {"State":"NY", "State Name":"New York"},
  {"State":"PA", "State Name":"Pennsylvania"}
]

cities = pd.DataFrame(source_data_city)
states = pd.DataFrame(source_data_state)

# 1. Marge City and States 
#
#   df name: cities_w_state_name
#   Expected columns are { "City name", "State", "Temp", "State Name" }
#   keep all cities

# 2. Avg temparature of all cities

# 3. Avg temparature per states
