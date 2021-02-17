#!/usr/bin/ruby
# @Author: Benjamin Held
# @Date:   2020-03-16 20:11:41
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2021-02-17 14:02:00

require "spec_helper"
require "wrf_statistics/parameter"

describe WrfStatistic::Parameter::ParameterRepository do

  describe ".new" do
    context "given the type flag as parameter" do
      it "set the flag for type output" do
        arguments = ["-t", "temp", "-f", "filename"]
        parameter_repository = WrfStatistic::Parameter::ParameterRepository.new(arguments)
        expect(parameter_repository.parameters[:type]).to eq("temp")
      end
    end
  end

  describe ".new" do
    context "given the type flag as parameter" do
      it "set the flag for type output" do
        arguments = ["--type", "wind", "--file", "filename"]
        parameter_repository = WrfStatistic::Parameter::ParameterRepository.new(arguments)
        expect(parameter_repository.parameters[:type]).to eq("wind")
      end
    end
  end

  describe ".new" do
    context "given the interval flag as parameter" do
      it "set the flag for interval output" do
        arguments = ["-i", "21", "42", "-f", "filename"]
        parameter_repository = WrfStatistic::Parameter::ParameterRepository.new(arguments)
        expect(parameter_repository.parameters[:interval][0]).to eq("21")
        expect(parameter_repository.parameters[:interval][1]).to eq("42")
      end
    end
  end

  describe ".new" do
    context "given the interval flag as parameter" do
      it "set the flag for interval output" do
        arguments = ["--interval", "13", "42", "--file", "filename"]
        parameter_repository = WrfStatistic::Parameter::ParameterRepository.new(arguments)
        expect(parameter_repository.parameters[:interval][0]).to eq("13")
        expect(parameter_repository.parameters[:interval][1]).to eq("42")
      end
    end
  end

  describe ".new" do
    context "given the compare flag as parameter" do
      it "set the flag for compare output" do
        arguments = ["-c", "alpha", "beta", "-f", "filename"]
        parameter_repository = WrfStatistic::Parameter::ParameterRepository.new(arguments)
        expect(parameter_repository.parameters[:compare][0]).to eq("alpha")
        expect(parameter_repository.parameters[:compare][1]).to eq("beta")
      end
    end
  end

  describe ".new" do
    context "given the compare flag as parameter" do
      it "set the flag for compare output" do
        arguments = ["--compare", "gamma", "delta", "--file", "filename"]
        parameter_repository = WrfStatistic::Parameter::ParameterRepository.new(arguments)
        expect(parameter_repository.parameters[:compare][0]).to eq("gamma")
        expect(parameter_repository.parameters[:compare][1]).to eq("delta")
      end
    end
  end

end
