module Exercise
  module Arrays
    class << self
      def replace(array)
        array.map { |item| item > 0 ? array.max : item }
      end

      def search(_array, _query)
        if _array.length == 0 || _query < _array[0] || _query > _array[_array.length - 1]
          return -1
        end
        
        binarySearch(_array, _query, 0, _array.length - 1)
      end

      def binarySearch(_array, _query, _left, _right)
        mid = (_right + _left) / 2

        if _query == _array[mid]
          return mid
        elsif (_right - _left) < 2
          return -1
        end

        if _query > mid
          binarySearch(_array, _query, mid + 1, _right)
        else
          binarySearch(_array, _query, _left, mid)
        end
      end
    end
  end
end
