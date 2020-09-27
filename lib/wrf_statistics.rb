#!/usr/bin/ruby
# @Author: Benjamin Held
# @Date:   2020-09-19 21:58:27
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2020-09-27 21:48:43

require "wrf_statistics/parameter"
require "wrf_statistics/help/help_output"


module WrfStatistic

  # Dummy class to get access to the instance variables
  class << self

    # @return [Parameter::ParameterHandler] the handler controlling the parameters
    attr_reader :parameter_handler
    
    # main entry point and initialization
    # @param [Array] arguments the input values from the terminal input ARGV
    def initialize(arguments)
      @parameter_handler = Parameter::ParameterHandler.new(arguments)
    end

  end
  
  # call to print the help text
  def self.print_help
    if (@parameter_handler != nil && @parameter_handler.repository.parameters[:help] != nil)
      WrfStatistic::HelpOutput.print_help_for(@parameter_handler.repository.parameters[:help])
    else
      print_error("Error: Module not initialized. Run WrfStatistic.new(ARGV)")
    end
    nil
  end

  # call to print version number and author
  def self.print_version
    puts 'wrf_statistics version 0.0.1'.yellow
    puts 'Created by Benjamin Held (October 2017)'.yellow
    nil
  end

  # call for standard error output
  # @param [String] message message string with error message
  def self.print_error(message)
    puts "#{message}".red
    puts 'For help type: ruby <script> --help'.green
    nil
  end

end
