class Sort
  def self.counting(list)
    max_number = list.max
    count_array = Array.new(max_number + 1, 0)
    sorted = Array.new(list.size)

    # add 1 to each count_array with index that matches with each number from list
    list.each_with_index do |number , index|
      count_array[number] += 1
    end

    # make the counting, adding the value of current element with previous one
    count_array.each_with_index do |number, index|
      count_array[index] += count_array[index - 1] if index > 0
    end

    # insert values into sorted array on the position correspondent to
    # count_array on the position = the number of list value
    # and decrease the count_array value by 1
    list.each do |number|
      sorted[count_array[number]] = number
      count_array[number] -= 1
    end
    #sorted[0] is not modified, so it can be removed
    sorted.drop(1)
  end
end
