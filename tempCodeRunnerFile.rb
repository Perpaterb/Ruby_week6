print "please enter a number from 1 to 5 : "
user_input = gets.tr('^1-5', '').to_i
case user_input
when 1
    puts "Yellow" 
when 2
    puts "Lime" 
when 3
    puts "Pink" 
when 4
    puts "Amber" 
when 5
    puts "The quick brown fox jumps over the lazy dog" 
else
    puts "invalid input" 
end