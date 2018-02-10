# @Author: Benjamin Held
# @Date:   2018-02-05 19:47:02
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2018-02-10 21:23:09

# Simple mapping class to get the symbol for a given input parameter
class WeatherType

  # initialization
  def initialize
    fill_mapping
  end

  private

  # @return [Hash] the mapping between input strings and the corresponding
  #                symbols 
  attr_reader :mapping

  def fill_mapping
    @mapping = Hash.new()
    @mapping['2mt'] = :temperature         # 2 m temperature
    @mapping['slp'] = :sea_pressure        # surface pressure
    @mapping['uvs'] = :wind_speed          # wind speed
    @mapping['uvd'] = :wind_direction      # wind direction
    @mapping['skt'] = :skin_temperature    # skin temperature
    @mapping['sot'] = :soil_temoerature    # top soil level temperature
    @mapping['swr'] = :shortwave_radiation # shortwave radiation
    @mapping['lwr'] = :longwave_radiation  # longwave radiation
    @mapping['pcp'] = :precipitation       # precipitation
  end

end
