# @Author: Benjamin Held
# @Date:   2015-07-20 11:23:58
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2020-09-19 21:46:15

module WrfStatistic

  module Parameter

    # class to seperate the storage of the parameter in a repository entity and
    # checking for valid parameter combination as part of the application logic.
    # Can raise an ArgumentError or IndexError when invalid parameter arguments
    # or parameter combinations are provided
    class ParameterHandler < RubyUtils::Parameter::BaseParameterHandler

      # method to initialize the correct repository that should be used 
      # in this handler
      # @param [Array] argv array of input parameters
      def initialize_repository(argv)
        @repository = ParameterRepository.new(argv)
      end

      private

      # private method with calls of the different validations methods
      def validate_parameters
        check_for_valid_filepath if (@repository.parameters[:file])

        check_number_of_parameters(:interval, 2)
        check_number_of_parameters(:compare, 2)
      end

      # private method to the specified parameter constraints
      def check_parameter_constraints
        # none at the moment
      end

    end

  end

end
