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
        # check mandatory date parameter
        check_mandatory_parameter(:date)

        # check mandatory file parameter
        check_mandatory_parameter(:file)
      end

    end

  end

end
