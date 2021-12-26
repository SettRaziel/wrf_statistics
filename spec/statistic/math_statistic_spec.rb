require "spec_helper"
require "wrf_statistics/statistic"
require 'wrf_library/wrf'

describe WrfStatistic::Statistic::MathStatistic do

handler = WrfLibrary::Wrf::Handler.new(File.join(__dir__,"../data/Han.d01.TS"), Date.new(2018, 03, 18))
math = WrfStatistic::Statistic::MathStatistic.new(handler)

  describe ".get_max_value" do
    context "given a meteogram output file and the date" do
      it "initialize handler and calculate the max value" do
        expect(math.get_max_value(:air_temperature)).to eq(295.83627)
      end
    end
  end
  
end
