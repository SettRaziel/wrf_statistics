module WrfStatistic

  module Statistic

    class MathStatistic

      def initialize(data_handler)
        @data_handler = data_handler
        @accuracy = 5
      end

      def get_max_value(symbol)
        max_value = Float::MIN
        @data_handler.data_repository.repository.each { |data|
          value = data.send(symbol)
          max_value = value if (value > max_value)
        }
        return max_value
      end

      def get_min_value(symbol)
        min_value = Float::MAX
        @data_handler.data_repository.repository.each { |data|
          value = data.send(symbol)
          min_value = value if (value < min_value)
        }
        return min_value
      end

      def calculate_mean_value(symbol)
        mean_value = 0.0
        @data_handler.data_repository.repository.each { |data|
          value = data.send(symbol)
          mean_value += value        
        }
        mean_value /= @data_handler.data_repository.repository.length
        return mean_value.round(@accuracy)
      end

      def get_median_value(symbol)
        values = Array.new()
        @data_handler.data_repository.repository.each { |data|
          value = data.send(symbol)
          values << value        
        }
        values = values.sort
        return values[values.length / 2]
      end

      def get_variance(symbol)
        mean_value = calculate_mean_value(symbol)
        variance = 0.0
        @data_handler.data_repository.repository.each { |data|
          value = data.send(symbol)
          variance += (value - mean_value)**2        
        }
        variance /= (@data_handler.data_repository.repository.length - 1)
        return variance.round(@accuracy)
      end

      private

      attr_reader :data_handler
      attr_reader :accuracy

    end

  end  

end
