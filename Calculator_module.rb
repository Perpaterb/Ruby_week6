module Calculator
    def multiply(a,b)
        answer = a * b
        return answer
    end   

    def devide(a,b)
        answer = a / b
        return answer
    end   

    def add(a,b)
        answer = a + b
        return answer
    end 

    def subtract(a,b)
        answer = a - b
        return answer
    end  
end

class Comp
    include Calculator
end

def sum_and_difference(a,b)
    i = Comp.new()
    sun = i.add(a,b)
    dif = i.subtract(a,b)
    answer = {:sum => sun, :difference => dif}
    return answer
end

def multiply_all(a)
    i = Comp.new()
    len = a.length()
    while len > 1
        mult = i.multiply(a[0],a[1])
        a.delete_at(0)
        a[0] = mult
        len = a.length()
    end
    answer = a[0]
    return answer
end

one = sum_and_difference(5,4)
puts one
two = multiply_all([1,2,3,4])
puts two