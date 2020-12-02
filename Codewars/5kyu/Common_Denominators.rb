def convertFracts(lst)
    array = []
    for i in lst
        array << i[1]
    end
    array
    common_denominators = array.reduce(1, :lcm)
    for i in lst
        i[0] = (common_denominators / i[1]) * i[0]
        i[1] = common_denominators
    end
    return lst
        
end











p convertFracts([[1, 2], [1, 3], [1, 4]])#, [[6, 12], [4, 12], [3, 12]])
[[24, 84], [28, 84], [7, 84]]#, instead got: [[12, 84], [28, 84], [7, 84]]
#[[4, 12], [4, 12], [1, 12]]