# @Author: Benjamin Held
# @Date:   2017-11-05 20:15:57
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2017-11-13 20:46:28

require_relative 'coordinate.rb'

class Station

  attr_reader :name
  attr_reader :descriptor
  attr_reader :elevation
  attr_reader :coordinate

  def initialize(name, descriptor, elevation, geo_coordinate)
    @name = name
    @descriptor = descriptor
    @elevation = elevation
    @coordinate = geo_coordinate
  end

end