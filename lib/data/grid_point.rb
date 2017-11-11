# @Author: Benjamin Held
# @Date:   2017-11-11 11:22:30
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2017-11-11 11:26:45

class GridPoint

  require_relative 'coordinate.rb'

  attr_reader :grid_point
  attr_reader :grid_coordinates

  def initialize(p_x, p_y, c_x, c_y)
    @grid_point = Coordinate.new(p_x, p_y)
    @grid_coordinates = Coordinate.new(c_x, c_y)
  end

end  