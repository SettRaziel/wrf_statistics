#!/usr/bin/ruby
# @Author: Benjamin Held
# @Date:   2020-03-16 20:11:41
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2020-09-21 20:53:29

require "spec_helper"
require "wrf_statistics/parameter"

describe WrfStatistic::Parameter::ParameterRepository do

  describe ".new" do
    context "given the type flag as parameter" do
      it "set the flag for type output" do
        arguments = ["-t", "temp", "filename"]
        parameter_repository = WrfStatistic::Parameter::ParameterRepository.new(arguments)
        expect(parameter_repository.parameters[:type]).to eq("temp")
      end
    end
  end

  describe ".new" do
    context "given the type flag as parameter" do
      it "set the flag for type output" do
        arguments = ["--type", "wind", "filename"]
        parameter_repository = WrfStatistic::Parameter::ParameterRepository.new(arguments)
        expect(parameter_repository.parameters[:type]).to eq("wind")
      end
    end
  end

end
