#!/usr/bin/ruby
# @Author: Benjamin Held
# @Date:   2020-03-16 20:59:23
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2021-02-17 14:04:08

require "spec_helper"
require "wrf_statistics/help/help_output"

describe WrfStatistic::HelpOutput do

  describe "#print_help_for" do
    context "given a one element help entry" do
      it "print the help text for :type" do
        expect { 
          WrfStatistic::HelpOutput.print_help_for(:type) 
        }.to output("WRF statistics help:".light_yellow + "\n" + \
                    " -t, --type      ".light_blue + "argument:".red + " <type>".yellow  + \
                    "; specifies the measurand type that should be evaluated\n").to_stdout
      end
    end
  end

  describe "#print_help_for" do
    context "given a one element help entry" do
      it "print the help text for :compare" do
        expect { 
          WrfStatistic::HelpOutput.print_help_for(:compare) 
        }.to output("WRF statistics help:".light_yellow + "\n" + \
                    " -c, --compare   ".light_blue + "arguments:".red + " <first> <second>".yellow  + \
                    "; <to do>\n").to_stdout
      end
    end
  end

  describe "#print_help_for" do
    context "given a one element help entry" do
      it "print the help text for :interval" do
        expect { 
          WrfStatistic::HelpOutput.print_help_for(:interval) 
        }.to output("WRF statistics help:".light_yellow + "\n" + \
                    " -i, --interval  ".light_blue + "arguments:".red + " <first> <second>".yellow  + \
                    "; <to do>\n").to_stdout
      end
    end
  end

  describe "#print_help_for" do
    context "given a one element help entry" do
      it "print the help text for :date" do
        expect { 
          WrfStatistic::HelpOutput.print_help_for(:date) 
        }.to output("WRF statistics help:".light_yellow + "\n" + \
                    " -d, --date      ".light_blue + "argument:".red + " <date>".yellow  + \
                    "; specifies the start_date of the given forecast\n").to_stdout
      end
    end
  end

  describe "#print_help_for" do
    context "given a one element help entry" do
      it "print the help text for :file" do
        expect { 
          WrfStatistic::HelpOutput.print_help_for(:file) 
        }.to output("WRF statistics help:".light_yellow + "\n" + \
                    " -f, --file      ".light_blue + "argument:".red + " <file>".yellow  + \
                    "; parameter that indicates a filepath to a readable file\n").to_stdout
      end
    end
  end

  describe "#print_help_for" do
    context "given a to whole help text" do
      it "print the help text for the script" do
        expect { 
          WrfStatistic::HelpOutput.print_help_for(true)
        }.to output("script usage:".red + " ruby <script> [parameters] <filename>\n" + \
                    "help usage :".green + "              ruby <script> (-h | --help)\n" + \
                    "help usage for parameter:".green + " ruby <script> <parameter> (-h | --help)\n" + \
                    "WRF statistics help:".light_yellow + "\n" + \
                    " -h, --help      ".light_blue + "show help text\n" + \
                    " -v, --version   ".light_blue + "prints the current version of the project\n" + \
                    " -f, --file      ".light_blue + "argument:".red + " <file>".yellow  + \
                    "; parameter that indicates a filepath to a readable file\n" + \
                    " -d, --date      ".light_blue + "argument:".red + " <date>".yellow  + \
                    "; specifies the start_date of the given forecast\n" + \
                    " -t, --type      ".light_blue + "argument:".red + " <type>".yellow  + \
                    "; specifies the measurand type that should be evaluated\n" + \
                    " -c, --compare   ".light_blue + "arguments:".red + " <first> <second>".yellow  + \
                    "; <to do>\n" + \
                    " -i, --interval  ".light_blue + "arguments:".red + " <first> <second>".yellow  + \
                    "; <to do>\n").to_stdout
      end
    end
  end  

end
