def array_of_fixnums?(array)
  array.all? { |i| i.is_a?(Fixnum)}
end

p array_of_fixnums?([1,'a',3])