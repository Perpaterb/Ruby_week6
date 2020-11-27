# Spec - ['$234', '$823', '$12', '$9283', '$5'] => 9278
# Find out the 'weath gap' => difference between the poorest and richest person

# input array of string
def wealth_inequality(balances)
    # iterate over this array
    # find the largest value
    # find the smallest value
    # calculate the difference
    # return the difference
    balances.delete("$")
    l = balances.max().to_i
    s = balances.min().to_i
    
    wealth_gap = l - s


    return wealth_gap
  end
  # output integer
  
p wealth_inequality(['$234', '$823', '$12', '$9283', '$5']) #=> 9278