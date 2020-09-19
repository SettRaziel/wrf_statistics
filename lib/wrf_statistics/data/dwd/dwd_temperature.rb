# @Author: Benjamin Held
# @Date:   2018-05-11 20:57:27
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2018-06-12 16:33:21

module Dwd

  class DwdTemperature < DwdData

    # @return [Float] the station temperature in degree celsius
    attr_reader :temperature
    # @return [Float] the relative humidity of the station
    attr_reader :humidity

  end    

end
