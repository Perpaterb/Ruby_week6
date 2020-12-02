def order_weight(strng)
    rearange_me = strng.split(" ").sort
    p rearange_me
    array = []
    for i in 0..rearange_me.length-1
        array[i] = rearange_me[i].each_char.map(&:to_i).inject(:+)
    end
    sort = 1
    answer = [] 
    while sort != nil
        sort = array.min
        if sort == nil
            break
        end 
        location = array.index(sort)
        answer << rearange_me[location]
        rearange_me.delete_at(location)
        array.delete_at(location)
    end 
    
    answer = answer*" "
    return answer
end

# or
# def order_weight(string)
#     string.split.sort_by { |n| [n.chars.map(&:to_i).reduce(:+), n] }.join(" ")
# end
# by c0nspiracy


p order_weight("103 123 4444 99 2000")#, "2000 103 123 4444 99")
p order_weight("2000 10003 1234000 44444444 9999 11 11 22 123")#, "11 11 2000 10003 22 123 1234000 44444444 9999")
