def kaprekar?(k)
  sq = k ** 2
  my_arr = sq.to_s.split('')  
  first_part = my_arr[0..(sq.to_s.length - k.to_s.length - 1)]
  second_part =my_arr[-k.to_s.length..sq.to_s.length]
  	
 (first_part.join.to_i + second_part.join.to_i) == k
 
end

p kaprekar?(297)