require './methods/bubble'
require './methods/counting'
require "./methods/insertion"
class Sort
  numbers = [34,8,2,202,0,7,52,102,45,43,0,77,342,23,67]
  print " COUNTING SORT --> #{Sort.counting(numbers)} \n"
  print "   BUBBLE SORT --> #{Sort.bubble(numbers)} \n"
  print "INSERTION SORT --> #{Sort.insertion(numbers)} \n"
end
