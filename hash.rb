## https://launchschool.com/books/ruby/read/hashes

grades = { "Orange" => 10, "Strawberry" => 1.80, "Blackberry" => 3.30, "Snozzberry" => 202 }

grades.each do |key, value|
    puts "Items: #{key} is $#{value}"
end