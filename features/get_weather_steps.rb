Given (/^an registered user in the system$/) do

end

When (/^the user requests the weather of "([^"]*)" city$/) do | name_city |
  get_weather_by_name_city(name_city)
  sleep 1
end

Then (/^the system returns the following information:$/) do | table |
  array = JSON.parse(@current_response)
  sleep 1
end

