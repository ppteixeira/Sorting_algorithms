require 'pry'
class Sort
  def self.insertion(list)
    (1..list.size - 1).each do |index|
      value = list[index]
      var = index - 1
      while var >= 0 and list[var] > value
          list[var + 1] = list[var]
          var -= 1
      end
      list[var + 1] = value
    end
    list
  end
end
