require 'benchmark'
require 'bigdecimal/math'

# def prime?(integer)
#   if integer <= 0 || integer == 1 || integer == 4
#     return false
#   end
#   result_array = []
#   array = (2...integer**0.5).to_a 
#   result_array << array.collect {|n| integer % n == 0 ? true:false}
#   result_array[0].include?(true) ? false : true
# end 

def prime?(integer)
  if integer <= 0 || integer == 1 || integer == 4
    return false
  end
  
  array = (2...integer**0.5).to_a 
  result_array = array.collect {|n| integer % n == 0 ? true:false}
  result_array.include?(true) ? false : true
end 
  
puts Benchmark.measure { prime?(300) }