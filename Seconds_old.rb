def checkis6(n)
    n = n.to_s
    if n.size != 6
        error = 1
        return error
        puts "Error DOB wwrong format"
    end
end

def checknotstr(n)
    if n == 0
        error = 1
        return error = 1
        puts "Error string in DOB"
    end
end 

running = 1
while running == 1
    error = 0
    while error == 0

        print "Enter your DOB: DDMMYY: "
        dob = gets.chomp.to_i
    
        checknotstr(dob)
        print "dob is: #{dob} \n"
        break if error == 1
 
        checkis6(dob)
        print "dob is: #{dob} \n"
        break if error == 1

        dob = dob.to_s.split('').map(&:to_i)
    
        day = (dob[0]*10) + dob[1]
        month = (dob[2]*10) + dob[3]
        year = (dob[4]*10) + dob[5]
    
        print "day #{day}  month #{month}  year #{year}"
    end
    puts "Invalid DOB! Try YY nor YYYY"
end 
