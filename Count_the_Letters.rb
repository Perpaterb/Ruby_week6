def count_letters(input)

	letter_count = input.scan(/\w/).each_with_object(Hash.new(0)) do |char, hash|
  		hash[char] += 1
	end

	return letter_count
end

puts count_letters("Hello World")