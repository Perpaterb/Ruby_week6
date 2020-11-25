module Calc
    def multiply(a,b)
        answer = a * b
        return answer
    end   

    def devide(a,b)
        answer = a / b
        return answer
    end   

    def array_sum(a)
        answer = a.sum
        return answer
    end     
end

class Comp
    include Calc
end

i = Comp.new()

puts i.multiply(4,7)
puts i.devide(320,8)
puts i.array_sum([4,7,10,-9,34,12])

