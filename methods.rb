# # Your code here
# def print_greeting(i)
#     puts "Hi, my name is " + i
# end 
# print_greeting("Josh")

# def add_three(i)
#     i = i + 3
# end

# add_three(4)


def get_last_two_names(i)
    len = i.length()
    for del in (1..(len -2))
        i.delete_at(0) 
    end
    puts i
end

get_last_two_names(["sara", "james", "martha", "charlie"])