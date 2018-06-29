#!/usr/bin/ruby
# @Author: Benjamin Held
# @Date:   2018-05-03 19:30:27
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2018-06-29 22:19:20

module MetaData

  class DwdMetaData < BaseMetaData

    # @return [String] the station id
    attr_reader :station_id

    # initialization
    # @param [String] meta_line the head line of a data set holding the 
    # relevant meta information
    # @param [String] station_id the internal dwd station id
    # qparam [Date] start_date the start date of the data set
    def initialize(meta_line, station_id, start_date)
      @station_id = station_id
      super(meta_line, start_date)
    end

    private

    def parse_header(header_line)
      nil
    end

  end

end 
