require "spec_helper"
require "wrf_statistics/parameter"

describe WrfStatistic::Parameter::ParameterHandler do

  describe ".new" do
    context "given the date flag" do
      it "create the repository and pass the parameter contrains" do
        arguments = ["-d", "2020-06-29", "--file", "filename"]
        parameter_handler = WrfStatistic::Parameter::ParameterHandler.new(arguments)
        expect(parameter_handler.repository.parameters[:date]).to eq("2020-06-29")
      end
    end
  end

  describe ".new" do
    context "given the period flag" do
      it "create the repository and fail the parameter contrains due to missing date" do
        arguments = ["-p", "42", "-f", "filename"]
        expect {
          WrfStatistic::Parameter::ParameterHandler.new(arguments)
        }.to raise_error(ArgumentError)
      end
    end
  end

  describe ".new" do
    context "given the date flag" do
      it "create the repository and fail the parameter contrains due to missing file" do
        arguments = ["-d", "2020-06-29"]
        expect {
          WrfStatistic::Parameter::ParameterHandler.new(arguments)
        }.to raise_error(ArgumentError)
      end
    end
  end

  describe ".new" do
    context "given the period flag" do
      it "create the repository and fail the parameter contrains due to missing file" do
        arguments = ["filename"]
        expect {
        WrfStatistic::Parameter::ParameterHandler.new(arguments)
        }.to raise_error(ArgumentError)
      end
    end
  end

  describe ".new" do
    context "given the period flag" do
      it "create the repository and fail the parameter contrains due to missing file" do
        arguments = []
        expect {
        WrfStatistic::Parameter::ParameterHandler.new(arguments)
        }.to raise_error(ArgumentError)
      end
    end
  end

end
