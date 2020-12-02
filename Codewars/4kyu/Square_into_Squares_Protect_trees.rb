# given a number find the squals less then it that fit in to in exactly starting with the bigest posible.


# def decompose(n)
#     goal = n*n
#     all_sqares = []  
#     for i in 1..n-1
#         all_sqares << i*i
#         i += 1
#     end 
#     try = all_sqares.combination(7).to_a
#     for i in (0..try.length-1)
#       if try[i].sum == goal
#         try = try[i]
#         for a in (0..try.length-1)
#           try[a] = Math.sqrt(try[a]).to_i 
#         end 
#         p try
#         break
#       end

#     end
#     answer = goal
#     return answer
#   end


# def decompose(n)
#     answer = nil
#     goal = n*n
#     all_sqares = []  
#     for i in 1..n-1
#           all_sqares.insert(0, i*i)
#           i += 1
#     end
#     array_length = 5
#     while array_length > 0
#         try = all_sqares.combination(array_length).to_a
#         #try = try.reverse()
#         try = try.first(200000)
#         #p try.length
#         for i in (0..try.length-1)
#               if try[i].sum == goal
#                 #p i
#                 try = try[i]
#                 for a in (0..try.length-1)
#                   try[a] = Math.sqrt(try[a]).to_i 
#                 end 
#                 try = try.reverse()
#                 answer = try
#                 array_length = 0
#                 break
#               end
#         end
#         array_length -= 1
#     end
#     return answer
    
# end


# def decompose(n)
#   answer = nil
#   answer_array = []
#   #goal = n*n
#   all_sqares = []  
#   for i in 1..n-1
#         all_sqares.insert(0, i*i)
#         i += 1
#   end
#   all_sqares << 100000

#   starting_point = 0
#   while (0..all_sqares.length-1).include?(starting_point)
#     goal = n*n
#     answer_array = []
#     print "go go go with "
#     p starting_point
#     all_sqares_copy = all_sqares    
#     solved = 0
#     while solved == 0
#       returned = next_number_that_fits(all_sqares_copy, goal)

#       p returned
#       answer_array << returned[0]
#       p answer_array
#       we = gets
#       goal = returned[2]
#       p goal
#       if goal == 2
#         solved = 1
#         starting_point = starting_point + 1
#       end
      

#       if goal == 0
#         answer = answer_array
#         solved = 1
#         starting_point = -1
#         break
#       elsif goal < 0
#         solved = 1
#         starting_point = starting_point + 1
#       elsif goal > 0
#         all_sqares_copy = returned[1]
#       end
#     end
    
    
    
#     for i in 0..starting_point
#       all_sqares.delete_at(0)
#     end
#   end


#   return answer
  
# end

# def next_number_that_fits(array, goal)
#   for i in 0..array.length-1
#     if array[0] <= goal
#       goal = goal - array[0]
#       #number_added = Math.sqrt(array[0]).to_i
#       number_added = array[0]
#       array.delete_at(0)
#       break
#     else
#       array.delete_at(0)
#     end
#   end
# returned = [number_added,array,goal]
# return returned
# end


#dmsller combos
 
def decompose(n)
  goal = n*n
  sub_hight = 1 
  while sub_hight < n
    first_big_number = n - sub_hight
    sub_goal = goal - (first_big_number*first_big_number)
    sub_goal_steps = Math.sqrt(sub_goal).to_i
    all_sqares = array_square_numbers_n_to_1(sub_goal_steps)
    combos = get_all_combos_there_roots(all_sqares, sub_goal)
    if combos == nil
      sub_hight = sub_hight + 1
    else
      combos.insert(0,first_big_number)
      combo = combos.reverse()
      return combo
      break
    end
  end
end

# def for making array of square numbers from n to 1
def array_square_numbers_n_to_1(n)
  all_sqares = []
  for i in 1..n
    all_sqares.insert(0, i*i)
    i += 1
  end
  return all_sqares
end

# def gets all bopernation of array in 
def get_all_combos_there_roots(array_in, goal)   
  worked = false
  for clength in 1..array_in.length
    try = array_in.combination(clength).to_a
    for i in (0..try.length-1)
      if try[i].sum == goal
        worked = true
        try = try[i]
        for a in (0..try.length-1)
           try[a] = Math.sqrt(try[a]).to_i 
           
        end 
        return try
        break
      end
    end
  end
  if worked == false
    try = nil
  end
  return try
end




p decompose(10)
#   testing(50, [1,3,5,8,49])    
#   testing(2, nil)