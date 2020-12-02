def score(dice)
  score = 0
  number = dice.detect{ |e| dice.count(e) > 2 }
  if number != nil
    if number == 1
      score = score + 1000
      removetrips(dice, 1)
    else
      score = score + (number * 100)
      removetrips(dice, number)
    end 
  end 
  for i in dice
    if i == 1
      score = score + 100
    end
    if i == 5
      score = score + 50
    end
  end 

  return score
end

def removetrips(a,e)
  for i in 1..3
    a.delete_at(a.find_index(e))
  end 
end

p score( [2, 3, 4, 6, 2] )# == 0
p score( [2, 2, 2, 3, 3] )# == 200
p score( [2, 4, 4, 5, 4] )# == 450


