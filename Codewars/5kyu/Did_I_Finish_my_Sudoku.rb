def done_or_not(board)
    # each colum row and box  need to have ints 1..9
    main_resault = []
  
    #row check
    main_get = send_array_for_calc(board)
    main_resault << main_get 
    #colun make
    rotated_array = []
    for a in 0..8
        for b in 0..8
            row = board[b]
            rotated_array << row[a]
        end
    end 
    
    rotated_array = rotated_array.each_slice(9).to_a

    #colun check
    main_get = send_array_for_calc(rotated_array)
    main_resault << main_get 
    #box make
    rotated_array = []
    for a in [0,3,6]
        for d in [0,3,6]
             for b in 0..2
                for e in 0..2
                    row = board[a+b]
                    rotated_array << row[d+e]
                end
            end
        end
    end
    rotated_array = rotated_array.each_slice(9).to_a
        
    #box check
    main_get = send_array_for_calc(rotated_array)
    main_resault << main_get 
    # final check 
    if main_resault.include? 'Try again!'
      return 'Try again!'
    else
      return 'Finished!' 
    end  
end
  
def send_array_for_calc(array) 
    resault = []
    for run in 0..8 
        get = calc(array[run])
        resault << get
    end
    if resault.include? 'Try again!'
        return 'Try again!'
    else
        return 'Finished!' 
    end
end

def calc(array_to_test)
    ok = 0
    for i in 1..9
        if array_to_test.include? i
            ok += 1
        end
    end
    if ok != 9
        return 'Try again!'
    else
        return 'Finished!'
    end
end



p done_or_not([[5, 3, 4, 6, 7, 8, 9, 1, 2], 
             [6, 7, 2, 1, 9, 5, 3, 4, 8],
             [1, 9, 8, 3, 4, 2, 5, 6, 7],
             [8, 5, 9, 7, 6, 1, 4, 2, 3],
             [4, 2, 6, 8, 5, 3, 7, 9, 1],
             [7, 1, 3, 9, 2, 4, 8, 5, 6],
             [9, 6, 1, 5, 3, 7, 2, 8, 4],
             [2, 8, 7, 4, 1, 9, 6, 3, 5],
             [3, 4, 5, 2, 8, 6, 1, 7, 9]])#, 'Finished!')
           
p done_or_not([[5, 3, 4, 6, 7, 8, 9, 1, 2], 
             [6, 7, 2, 1, 9, 0, 3, 4, 9],
             [1, 0, 0, 3, 4, 2, 5, 6, 0],
             [8, 5, 9, 7, 6, 1, 0, 2, 0],
             [4, 2, 6, 8, 5, 3, 7, 9, 1],
             [7, 1, 3, 9, 2, 4, 8, 5, 6],
             [9, 0, 1, 5, 3, 7, 2, 1, 4],
             [2, 8, 7, 4, 1, 9, 6, 3, 5],
             [3, 0, 0, 4, 8, 1, 1, 7, 9]])#, 'Try again!')