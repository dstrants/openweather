module Openweather2
  class Weather

    attr_reader :city, :longitude, :latitude, :pressure, :humidity, :clouds,
                :temperature, :min_temperature, :max_temperature, :wind_speed,
                :wind_angle, :sunrise, :sunset

    def initialize(json)
      @city = json['name']
      @longitude = json['coord'] && json['coord']['lon']
      @latitude = json['coord'] && json['coord']['lat']
      @temperature = json['main']['temp']
      @pressure = json['main']['pressure']
      @humidity = json['main']['humidity']
      @min_temperature = json['main']['temp_min']
      @max_temperature = json['main']['temp_max']
      @clouds = json['clouds']['all']
      @wind_speed = json['wind']['speed']
      @wind_angle = json['wind']['deg']
      @sunrise =  json['sys']['sunrise']
      @sunset = json['sys']['sunset']
    end
  end
end
