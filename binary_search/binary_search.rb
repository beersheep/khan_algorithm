require 'pry'
class Array
  def binary_search(target)
    min = 1 
    max = self.size
    
    while max >= min
      index = ((max + min) / 2).floor

      if self[index] > target 
        max = index -1 
      elsif self[index] < target
        min = index + 1
      elsif self[index] == target
        return index 
      end
    end

    return -1
  end
end
