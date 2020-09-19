# @Author: Benjamin Held
# @Date:   2018-06-02 12:58:49
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2018-06-09 12:18:43

module Dwd

  class DwdPressure

    # @return [Float] the pressure at the given station
    attr_reader :station_pressure
    # @return [Float] the reduced pressure on sea level
    attr_reader :reduced_pressure

  end

end
