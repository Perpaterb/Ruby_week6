require ‘benchmark’


result = Benchmark.measure do
    number = 0
    while number < 100
        f = 0
        b = 0
        number = number + 1
        if (number % 3 == 0)
            print "Fizz "
            f = 1
        end
        if (number % 5 == 0)
            print "Buzz "
            b = 1
        end
        if f == 1 or b == 1
           
        else
            print number
        end
        puts ""
    end
    
  
puts result

end