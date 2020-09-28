# @Author: Benjamin Held
# @Date:   2017-10-31 18:20:23
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2020-09-28 12:03:23

require 'ruby_utils/string'
require 'wrf_statistics/parameter'
require_relative '../lib/wrf_statistics'

begin
  WrfStatistic.initialize(ARGV)
  handler = WrfStatistic.parameter_handler
  if (handler.repository.parameters[:help])
    WrfStatistic.print_help
  end
rescue StandardError, NotImplementedError => e
  WrfStatistic.print_error(e.message)
end
