def merge_sort(array) 
    if array.length <=1 
      array
    else 
      left = merge_sort(array[0...array.size / 2])
      right = merge_sort(array[array.size / 2...array.size])
      merge(left, right)
    end 
  end
  
  def merge(left_array, right_array)
      sorted_array = []
      while !left_array.empty? && !right_array.empty? do
          if left_array[0] < right_array[0]
              sorted_array.push(left_array.shift)
          else   
              sorted_array.push(right_array.shift)
          end
      end 
      return sorted_array.concat(left_array).concat(right_array)
  end
  
  array = [2, 4, 5, 7, 9, 1, 3, 6, 8]
  
  p merge_sort(array)
