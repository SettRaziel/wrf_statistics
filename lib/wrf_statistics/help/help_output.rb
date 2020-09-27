# @Author: Benjamin Held
# @Date:   2016-01-18 14:29:41
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2020-09-27 20:55:00

require "ruby_utils/help_output"

module WrfStatistic

  # Output class for help text
  class HelpOutput < RubyUtils::BasicHelpOutput

    private

    # method to specify and add the help entries with help text only
    def self.add_single_help_entries
      nil
    end

    # method to specify and add the help entries with help text and one argument
    def self.add_one_argument_help_entries
      add_single_argument_text(:type, " -t, --type     ", " <type>",
            "; specifies the measurand type that should be evaluated")
      nil
    end

    # method to specify and add the help entries with help text and two arguments
    def self.add_two_argument_help_entries
      add_dual_argument_text(:compare, " -c, --compare  ", " <first> <second>", "; <to do>")
      add_dual_argument_text(:interval, " -i, --interval ", " <first> <second>", "; <to do>")
      nil
    end

    # method to print the header of the help output
    def self.print_help_head
      puts "script usage:".red + " ruby <script> [parameters] <filename>"
      puts "help usage :".green + "              ruby <script> (-h | --help)"
      puts "help usage for parameter:".green +
           " ruby <script> <parameter> (-h | --help)"
      puts "#{get_script_name} help:".light_yellow
    end

    # method to print the invalid parameter combinations
    def self.print_invalid_combinations
      nil
    end

    # method to print the available configuration parameter
    def self.print_configuration_parameter
      nil
    end

    # method to set the name of the script project
    def self.get_script_name
      "WRF statistics"
    end
    
  end

end
