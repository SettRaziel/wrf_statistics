# @Author: Benjamin Held
# @Date:   2015-06-12 10:45:36
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2019-04-20 17:50:39

# Parent module which holdes the classes dealing with reading and validating
# the provided input parameters
module Parameter

  # Parameter repository to store the valid parameters of the script.
  # {#initialize} gets the provided parameters and fills a hash which
  # grants access to the provided parameters and arguments.
  class ParameterRepository < BaseParameterRepository

    private

    # method to read further argument and process it depending on its content
    # @param [String] arg the given argument
    # @param [Array] unflagged_arguments the argument array
    def process_argument(arg, unflagged_arguments)
      case arg
        when '-i', '--interval'
          create_two_argument_entry(:interval, unflagged_arguments)
        when '-c', '--compare' 
          create_two_argument_entry(:compare, unflagged_arguments)
        when '-t', '--type'
          create_argument_entry(:type, unflagged_arguments)
        when /-[a-z]|--[a-z]+/ then raise_invalid_parameter(arg)
      else
        raise_invalid_parameter(arg)
      end
      nil
    end

  end

end
