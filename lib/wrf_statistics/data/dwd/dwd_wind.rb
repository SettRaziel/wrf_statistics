# @Author: Benjamin Held
# @Date:   2018-06-02 13:02:30
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2018-06-13 22:00:57

module Dwd

  class DwdWind

    # @return [Float] the wind direction in [degree]
    attr_reader :direction
    # @return [Float] the wind speed in [m/s]
    attr_reader :speed

  end

end
