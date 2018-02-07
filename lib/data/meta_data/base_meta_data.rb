#!/usr/bin/ruby
# @Author: Benjamin Held
# @Date:   2018-01-27 16:45:47
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2018-02-07 21:39:48

module MetaData

  class BaseMetaData

    require_relative '../coordinate'
    require_relative '../station'
    require_relative '../../string/string'

    attr_reader :station
    attr_reader :start_date

    def initialize(header_line, start_date)
      @start_date = start_date
      parse_header(header_line)
    end

    private

    def parse_header(header_line)
      fail NotImplementedError, " Error: the subclass #{self.class} needs " \
           "to implement the method: print_meta_information " \
           "from its base class".red
    end

  end

end  
