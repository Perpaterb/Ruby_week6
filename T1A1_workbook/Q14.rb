# Demonstrate your algorithmic thinking through completing the following two tasks, in order:
#  1. Create a flowchart to outline the steps for listing all prime numbers between 1 and 100 (inclusive).
#      Your flowchart should make use of standard conventions for flowcharts to indicate processes, tasks, actions, or operations
#  2. Write pseudocode for the process outlined in your flowchart

# ______________________________
#  Loop though numbers 1 to 100 call it "number"
# ______________________________
#               v
#         ______________________________
#         Set "tested" var to 0
#         ______________________________
#                       v
#         ______________________________
#         loop for each number less then "number" starting at 2. call it "divider"
#         ______________________________
#                         v
#                 _______________________________
#                 if "number" is divisable by "divider" with the remander being 0 then increase the "tested" var value
#                 _______________________________
#         
#
#         _____________________________
#             Print "numbers" with a "tested" value of 1
#         ____________________________

For loop though numbers 1 to 100 
1. for 




#run though numbers 1 to 100 (number)
for i in (1..100)
    #if any tester var set to 0
    t = 0
    #for each number get all the numbers less then it -1 from 2 up. (divider) eg. we can want 1 or the number   
    for divider in (2..i)
        #check if Numer is divisable by divider and and they are num the same.
        if i % divider == 0
            #if ture then get a t score
            t = t + 1
        end
    end
    #after the devider loop is all finished if a numbers t score is 1 that it was only devisable by itself and 1 becaus we start at 2.  
    if t == 1
         puts i
    end
end
