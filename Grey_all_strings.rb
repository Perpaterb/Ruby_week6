def permutations(string)

    add_numbers = []
    numbers = []
    result = []
    one_char = false

    len = string.length

    if len < 2
        result << string
        one_char = true
    end 

    if one_char == false
        num = 1
        for i in (1..len)
            numbers.append("")
            add_numbers.append(num)
            num = num * 2
        end 
        desired_sum = add_numbers.sum

        given_array = string.chars
        i = 0
        counter = 0
        running = 0
        while i.to_s.size != len+2
            if i.to_s.size == len+1
                i.to_s.slice!(0)
                base_array = i.chars
                pos = 0 
                base_array.each do |a|
                    base_array[pos] = given_array[a.to_i]
                    numbers[pos] = add_numbers[a.to_i]
                    pos += 1 
                end
            
                if (numbers.sum) == desired_sum
                    result << base_array.join()
                end
            end
            i = counter.to_s(len)
            counter += 1
        end
    end
    return result.uniq
end

answer = permutations("ab")
p answer
