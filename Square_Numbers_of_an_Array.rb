def square_numbers_of_an_array (array_of_numbers)
    
    array_squared = []
    
    array_of_numbers.each do |i|
		array_squared << i*i
	end

    return array_squared
end

array_squared = square_numbers_of_an_array([1, 2, 3, 4, 5])
puts array_squared
