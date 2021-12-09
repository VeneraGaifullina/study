module Exercise
  module Arrays
    class << self
      def replace(array)
        new_array = []
        max_el = max(array)
        array.each do |el|
          new_array << if el.positive?
                         max_el
                       else
                         el
                       end
        end
        new_array
      end

      def max(array)
        max = array[0]
        array.each do |el|
          max = el if el > max
        end
        max
      end

      def search(array, query, low = 0, high = (array.length - 1))
        if low <= high
          if (query >= array[low]) && (query <= array[high])
            mid = (low + high) / 2
            if array[mid] == query
              mid
            elsif array[mid] > query
              search(array, query, low, mid - 1)
            else
              search(array, query, mid + 1, high)
            end
          else
            -1
          end
        else
          -1
        end
      end
    end
  end
end
