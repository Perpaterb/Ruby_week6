require 'benchmark'
puts Benchmark.measure {
    for i in 1..100     
        puts i % 15 == 0 ? "Fizzbuzz" : i % 3 == 0 ? "Fizz" : i % 5 == 0 ? "Buzz" : i 
    end
}