# Demonstrate your algorithmic thinking through completing the following two tasks, in order:
#  1. Create a flowchart to outline the steps for listing all prime numbers between 1 and 100 (inclusive).
#      Your flowchart should make use of standard conventions for flowcharts to indicate processes, tasks, actions, or operations
#  2. Write pseudocode for the process outlined in your flowchart

#run though numbers 1 to 100 (number)
for i in (1..100)
    #if any tester var set to 0
    t = 0
    #for each number get all the numbers less then it -1 from 2 up. (divider) eg. we can want 1 or the number   
    for divider in (2..i)
        #check if Numer is divisable by divider and and they are num the same.
        if i % divider == 0
            t = t + 1
        end
    end
    if t == 1
         print t
         print "  :"
         puts i
    end
end
