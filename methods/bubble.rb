class Sort
  def self.bubble(list)
    (0..list.size-1).each do
      (0..list.size-2).each do |i|
        #swap numbers in the array if next value is lower then current one
        list[i],list[i+1] = list[i+1],list[i] if list[i] > list[i+1]
      end
    end
    list
  end  
end
