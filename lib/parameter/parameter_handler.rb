# @Author: Benjamin Held
# @Date:   2015-07-20 11:23:58
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2018-01-10 19:52:38

module Parameter

  # class to seperate the storage of the parameter in a repository entity and
  # checking for valid parameter combination as part of the application logic.
  # Can raise an ArgumentError or IndexError when invalid parameter arguments
  # or parameter combinations are provided
  class ParameterHandler
    # @return [ParameterRepository] repository which reads and stores the
    # parameter provided as arguments in script call
    attr_reader :repository

    # initialization
    # @param [Array] argv array of input parameters
    def initialize(argv)
      @repository = ParameterRepository.new(argv)
      validate_parameters
      check_parameter_constraints
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

    # checks if the parsed filename is a valid unix or windows file name
    # @raise [ArgumentError] if filepath is not valid
    def check_for_valid_filepath
      filepath = @repository.parameters[:file]
      unixfile_regex= %r{
        \A                       # start of string
        ((\.\/)|(\.\.\/)+|(\/))? # relativ path or upwards or absolute
        ([\-\w\s]+\/)*           # 0-n subsirectories
        [\-\w\s]*[a-zA-Z0-9]     # filename
        (\.[a-zA-Z0-9]+)?        # extension
        \z                       # end of string
      }x

      windowsfile_regex = %r{
        \A                      # start of string
        ([A-Z]:)?\\?            # device name
        ([\-\w\s]+\\)*          # directories
        [\-\w\s]*[a-zA-Z0-9]    # filename
        (\.[a-zA-Z0-9]+)?       # extension
        \z                      # end of string
      }x

      if (!(filepath =~ unixfile_regex || filepath =~ windowsfile_regex))
        raise ArgumentError, " Error: invalid filepath: #{filepath}"
      end
    end

    # checks the correct number of parameters for the given key
    # @param [Symbol] key the key of a parameter
    # @param [Integer] count_parameters the number of arguments for this
    #  parameter
    # @raise [IndexError] if the number of arguments for the parameter is invalid
    def check_number_of_parameters(key, count_parameters)
      if (@repository.parameters[key] && !@repository.parameters[:help])
        value = @repository.parameters[key]
        if (value.size != count_parameters)
          raise IndexError,
            " Error: invalid number of parameters for option: #{key} "
        end
      end
    end

    # checks if the second parameter occurs together with the first
    # @param [String] p the present parameter
    # @param [String] r the required parameter
    # @param [Symbol] symbol the literal to check
    # @raise [ArgumentError] if the second parameter is not present
    def check_occurrence(p, r, symbol)
      if (!@repository.parameters[symbol])
        raise ArgumentError,
              " Error: #{p} requires the parameters of #{r}"
      end
    end

  end

end
