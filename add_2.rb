puts "Add 2 numbers"
print "Enter first number: "
number1 = gets.chomp.to_f
while number1 == 0
    puts "Number invalid!"
    print "Enter first number: "
    number1 = gets.chomp.to_f
end
print "Enter second number: "
number2 = gets.chomp.to_f
while number2 == 0
    puts "Number invalid!"
    print "Enter first number: "
    number1 = gets.chomp.to_f
end
answer = number1 + number2
print "The answer is : #{answer}"