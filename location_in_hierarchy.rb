def location_in_hierarchy(object, method)
  current_class = object.class	
  while current_class != nil 
    if current_class.instance_methods.include?(method) && current_class.superclass.instance_methods.include?(method)
      current_class = current_class.superclass			
    else return current_class          
    end
  end  
end

p location_in_hierarchy(1, :between?)
p location_in_hierarchy('a string', :to_s)
