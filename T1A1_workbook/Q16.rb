# An allergy test produces a single numeric score which contains the information about all the allergies the person has (that they were tested for). The list of items (and their value) that were tested are:
#  - eggs (1)
#  - peanuts (2)
#  - shellfish (4)
#  - strawberries (8)
#  - tomatoes (16)
#  - chocolate (32)
#  - pollen (64)
#  - cats (128)

# So if Tom is allergic to peanuts and chocolate, he gets a score of 34.

# Write a program that, given a person’s score can tell them:
#  a) whether or not they’re allergic to a given item
#  b) the full list of allergies.


##solution description 
#remove largest possible allergie value from score until score == 0 each time a value is removed record allergie type

##pseudocode
#Create allergic_to array
#Create a Var=128
#Create allergie list array
#Ask User for thier score
#convert users_score to int
#
#Create loop that runs 8 times
#find highest allergie types score that is > or = users_score using another loop
#Add removed allergie type to allergic_to
#take away allergie types score from users_score 

#If after 8 loops users_score is not = to 0 then tell user invalid score
#
#Ask user if they want 
#A: Select an allergie from the list and see if you are allergic to it
#or 
#B: List all allergies
#or
#C: Quit


allergic_to = []
num = 128
allergies = ["cats", "pollen", "chocolate", "tomatoes", "strawberries", "shellfish", "peanuts", "eggs"]
puts `clear`
print "Enter your allergie score: "
users_score = gets.tr('^0-9', '').to_i
for i in (0..7)
    if users_score >= num
        allergic_to << i
        users_score = users_score - num
    end
    num = num / 2
end
if users_score != 0
    puts "invalid score"
    exit
end
while true
    puts `clear`
    puts "How would you like the results?"
    puts "A: Select an allergie from the list and see if you are allergic to it"
    puts "or" 
    puts "B: List all allergies"
    puts "or"
    puts "C: Quit"
    print "Please enter A, B or C: "
    user_view = gets.chomp.upcase
    if user_view == "A"
        puts `clear`
        go = 1
        while go == 1
            puts ""
            puts "1.cats   2.pollen   3.chocolate   4.tomatoes   5.strawberries   6.shellfish   7.peanuts   8.eggs"
            print "Enter the number next to the corresponding allergie or '9' to go back: "
            user_select_num = (gets.tr('^0-9', '').to_i-1)
            if user_select_num == 8
                go = 0
            else
                len = (allergic_to.length()-1)
                hit = 0
                for i in (0..len)
                    if user_select_num == allergic_to[i]
                        hit = 1 
                        puts `clear`
                        print "Yes you are allergic to "
                        puts allergies[user_select_num]                     
                    end
                end
                if hit == 0
                    puts `clear`
                    print "No you are not allergic to "
                    puts allergies[user_select_num]
                end
            end

        end 
    elsif user_view == "B"
        puts `clear`
        print "You are allergic to: "
        len = (allergic_to.length()-1)
        for i in (0..len)
            print allergies[allergic_to[i]]
            if i != len
                print ", "
            end            
        end
        puts "."
        exit
    elsif user_view == "C"
        exit
    else
        puts "Invalid selection"
    end
end

