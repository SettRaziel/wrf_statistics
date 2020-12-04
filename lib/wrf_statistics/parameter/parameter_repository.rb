# @Author: Benjamin Held
# @Date:   2015-06-12 10:45:36
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2020-12-04 19:41:54

module WrfStatistic

  # Parent module which holds the classes dealing with reading and validating
  # the provided input parameters
  module Parameter

    # Parameter repository to store the valid parameters of the script.
    # {#initialize} gets the provided parameters and fills a hash which
    # grants access to the provided parameters and arguments.
    class ParameterRepository < RubyUtils::Parameter::BaseParameterRepository

      private

      # method to read further argument and process it depending on its content
      # @param [String] arg the given argument
      # @param [Array] unflagged_arguments the argument array
      def process_argument(arg)
        case arg
          when *@mapping[:interval]   then create_two_argument_entry(:interval)
          when *@mapping[:compare]    then create_two_argument_entry(:compare)
          when *@mapping[:type]       then create_argument_entry(:type)
          when /-[a-z]|--[a-z]+/ then raise_invalid_parameter(arg)
        else
          raise_invalid_parameter(arg)
        end
        nil
      end

      # method to define the input string values that will match a given paramter symbol
      def define_mapping
        @mapping[:compare] = ['-c', '--compare']
        @mapping[:interval] = ['-i', '--interval']
        @mapping[:type] = ['-t', '--type']
      end

    end

  end

end
