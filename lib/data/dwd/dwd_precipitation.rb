# @Author: Benjamin Held
# @Date:   2018-06-02 13:05:59
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2018-06-08 20:59:32

module Dwd

  class DwdPrecipitation

    # @return [Float] the amount of precipitation in [mm/h]
    attr_reader :amount
    # @return [Integer] an indicator number to show if the precipitation
    # result from rain
    attr_reader :rain_indicator
    # @return [Integer] an indicator number to show the kind of
    # precipitation
    attr_reader :precipitation_form

  end

end
