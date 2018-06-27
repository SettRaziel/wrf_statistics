# @Author: Benjamin Held
# @Date:   2017-11-05 20:10:11
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2018-06-27 20:44:13

module MetaData

  class WrfMetaData < BaseMetaData

    require_relative '../grid_point'

    attr_reader :grid_data

    private

    def parse_header(header_line)
      entries = delete_special_chars(header_line)
      geo_coordinate = Coordinate.new(entries[5].to_f, entries[6].to_f)
      @grid_data = GridPoint.new(entries[8].to_f, entries[9].to_f,
                                 entries[11].to_f, entries[12].to_f)
      @station = Station.new(entries[0], entries[3], entries[13],
                             geo_coordinate)
      nil
    end

    def delete_special_chars(entries)
      entries.each { |entry|
        entry.delete("(),")
      }
      return entries
    end

  end

end  
