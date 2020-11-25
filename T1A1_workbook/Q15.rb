# Write pseudocode OR Ruby code for the following problem:
# You have access to two variables: raining (boolean) and temperature (integer).
# If it’s raining and the temperature is less than 15 degrees, print to the screen “It’s wet and cold”.
# if it's less than 15 but not raining print “It’s not raining but cold”. 
# If it’s greater than or equal to 15 but not raining print “It’s warm but not raining”, and otherwise tell them “It’s warm and raining”.
# N/A words


if raining = true and temperature < 15
    puts "It’s wet and cold"
elsif raining = false and temperature < 15
    puts "It’s not raining but cold"
elsif raining = false and temperature >= 15
    puts "It’s warm but not raining"
else
    puts "It’s warm and raining"
end

