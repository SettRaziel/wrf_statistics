require "spec_helper"
require "wrf_statistics/parameter"

describe WrfStatistic::Parameter::ParameterHandler do

  describe ".new" do
    context "given the date flag" do
      it "create the repository and pass the parameter contrains" do
        arguments = ["-f", "filename"]
        parameter_handler = WrfStatistic::Parameter::ParameterHandler.new(arguments)
        expect(parameter_handler.repository.parameters[:file]).to eq("filename")
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
