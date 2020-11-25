class Pet
    attr_reader :type
    attr_accessor :name
    @@total_pets = 0
 
    def initialize(type, name)
        @type = type
        @name = name
        @meals = []
        @@total_pets += 1
    end
 
    def self.total_pets
        @@total_pets
    end
 
    def eat(grams, time_of_day)
    # time_of_day is one of morning, afternoon, evening
        @meals << {amount: grams, time: time_of_day}
    end
   
    def display_daily_log
        puts "#{@name} ate #{@meals.length} meals today:"
        @meals.each do |meal|
            puts "   #{meal[:amount]} grams in the #{meal[:time]}"
        end
    end
 
    def to_s
        return "Pet: type-#{@type} name-#{@name}"
    end
 end
 
 class Cat < Pet
    def initialize(name)
        super("cat", name)
        @naps = []
    end
 
    def sleep(time_in_hours)
        @naps << time_in_hours
    end
    
    def sleep_time()
        total_sleep = @naps.sum
        return total_sleep
    end
    def naps()
        return @naps
    end
 end
 



number = rand(1..10)
guess = 0
puts "A random number from 1 to 10 has been generated"
while true
   puts "Type in a guess: "
   guess = gets.chomp.to_i
   if guess == 0
       puts "Invalid"
   end
   if guess < number
       puts "Higher"
   end
   if guess > number
       puts "Lower"
   end
   if guess == number
		puts "You got it!"
       break
   end
end
