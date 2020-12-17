def alphametics(puzzle)
    # a + B... = z
    # SEND + MORE = MONEY
    # S000 + E00 + N0 + D + M000 + O00 + R0 + E = M0000 + O000 + N00 + E0 + Y0
    # S and M and M cannot = 0
    # MONEY can be 10234 - 98765
    #
    # for 10234 = send + more = s32d + 10r3 
    # can remaning 5 6 7 8 9 be swaped with s d r to make true.
    #
    #

    # make puzzle uniform
    puzzle[' = '] = ' + '

    # get lenths of words
    lengths = puzzle.clone
    lengths = lengths.split(' + ')
    for i in 0..(lengths.length()-1)
        lengths[i] = lengths[i].length
    end

    # get z
    z = puzzle.split(' + ').clone[-1]

    # get all posible perunations of z
    z_arr = z.chars
    z_arr_all_m = []
    z_arr_m = []
    first = true
    numbers = [0,1,2,3,4,5,6,7,8,9]
    number_pers = numbers.permutation(z_arr.length).to_a
    p number_pers
    for n in number_pers
        p n
        gets 
        for i in 0..(z_arr.length-1)
            if first == true
                if n[0] == 0
                    z_arr_m << n[1]
                    n.delete_at(1)
                end
                first = false
            else
                z_arr_m << n[0]
                n.delete_at(0)
            end
        end
    end
    # p z_arr_m
    # p n
    

end














alphametics('SEND + MORE = MONEY')#,                  '9567 + 1085 = 10652'],
# alphametics('ZEROES + ONES = BINARY')#,               '698392 + 3192 = 701584'],
# alphametics('COUPLE + COUPLE = QUARTET')#,            '653924 + 653924 = 1307848'],
# alphametics('DO + YOU + FEEL = LUCKY')#,              '57 + 870 + 9441 = 10368'],
# alphametics('ELEVEN + NINE + FIVE + FIVE = THIRTY')#, '797275 + 5057 + 4027 + 4027 = 810386']
