BASE_URL_CURRENT_WEATHER = "http://api.weatherunlocked.com/api/current/"
BASE_URL_WEATHER_FORECAST = "http://api.weatherunlocked.com/api/forecast/"
API_PARTIAL_URL_WEATHER = "?lang=pl&app_id=#{Rails.application.credentials.dig(:WEATHER_APP_ID)}&app_key=#{Rails.application.credentials.dig(:WEATHER_APP_KEY)}"


class WeatherService < ApplicationRecord

  def self.getCurrentWeather(suchy_dab_location)
    @currentWeather = HTTParty.get(BASE_URL_CURRENT_WEATHER + "#{suchy_dab_location}" + API_PARTIAL_URL_WEATHER)
    @currentWeather
  end

  def self.getWeatherForecast(suchy_dab_location)
    @forecastWeather = HTTParty.get(BASE_URL_WEATHER_FORECAST + "#{suchy_dab_location}" + API_PARTIAL_URL_WEATHER)
    date_today = Time.now.strftime("%d/%m/%Y")
    prognoza_na_dzis = {}
    @forecastWeather['Days'].each do |konkretny_dzien|
      if konkretny_dzien['date'] == date_today
        prognoza_na_dzis = {wschod_slonca: konkretny_dzien["sunrise_time"],
        zachod_slonca: konkretny_dzien["sunset_time"],
        temp_max: konkretny_dzien["temp_max_c"],
        temp_min: konkretny_dzien["temp_min_c"],
        opad: konkretny_dzien["precip_total_mm"],
        deszcz: konkretny_dzien["rain_total_mm"]
      }
      end
    end
    prognoza_na_dzis
  end



end
