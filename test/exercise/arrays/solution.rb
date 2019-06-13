module Exercise
  module Arrays
    class << self
      def replace(array)
        array.map { |item| item > 0 ? array.max : item }
      end

      def search(_array, _query)
        _array.include?(_query) ? _array.index(_query) : -1
      end
    end
  end
end
