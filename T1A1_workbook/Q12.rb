
# User imput (gets) needs to be trimed (.tr) down to remove any non numerical data including full stops ('^0-9.', '') as we only want a number.
# User imput (gets.tr) now needs to be tured into a float. Mathmatical calculation will be broken by having a string anywere in them.  
celsius = gets.tr('^0-9.', '').to_f
fahrenheit = (celsius * 9 / 5) + 32
print "The result is: "
# This calculation works however there should not be a full stop atnthe end of a float. Changeing "print fahrenheit" to "puts fahrenheit" and removing "puts ".".
puts fahrenheit