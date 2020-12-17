
def get_factoradic(n, string_in_l)
    factoradic = []
    for a in 1..string_in_l
        factoradic[a-1] = n % a
        n = n / a
    end
    return factoradic.reverse()
end

def get_nth_permutation(string_in, n)
    string_out = []
    factoradic = get_factoradic(n, string_in.length)
    string_in = string_in.chars
    for i in factoradic        
        string_out << string_in[i]
        string_in.delete_at(i)
    end  
    return string_out.join
end 

p get_nth_permutation("coolermaster", 430023)



