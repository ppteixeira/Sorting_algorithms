require 'pry'
class Sort
  def self.insertion(list)
    # for every index from 1 until the last index from list
    (1..list.size - 1).each do |index|
      # set a temporary variable to store it's value
      value = list[index]
      # set a variable as the previous index
      previous = index - 1

      while previous >= 0 and list[previous] > value
        list[previous + 1] = list[previous]
        previous -= 1
      end
      list[previous + 1] = value
    end
    list
  end
end
