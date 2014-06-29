class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end
  
  
#Filter = lambda { |array, &block| array.select(&block)}
 
  def sum(initial_value = 0, &block) 
    
    my_arr = array.map(&block).inject {|sum, i| sum + i} + initial_value
    
  end
end

my_array = MyArray.new([1, 2, 3])
p my_array.sum(0) {|n| n ** 2 }