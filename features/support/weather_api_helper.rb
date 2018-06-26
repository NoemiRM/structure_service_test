require_relative '../support/api_helper'
require 'json'

module Weather_Api_Helper
  def get_weather_by_name_city(name_city)
    begin
      url_service = "api.openweathermap.org/data/2.5/forecast?q=#{name_city}&APPID=b1fb33ebcd6ffc92508e4dfaf0208976"
      get_info = {:url => url_service }
      @current_response = ApiHelper.send_get(get_info)

      return @current_response
    rescue => error
      puts "Error #{error}"
    end
  end
end
World(Weather_Api_Helper)