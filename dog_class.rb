class Dog
    
    def initialize(name,breed,age)
        @name = name
        @breed = breed
        @age = age
        @walks_log = []
        @total_walked = 0
    end
    
    def name()
        return @name
    end
    def breed()
        return @breed
    end
    def age()
        return @age
    end
    def name=(a)
        @name = a
    end 


    def walk(distance_in_kms)   
        @walks_log << distance_in_kms     
    end
    
    def walked_distance()
        @total_walked = @walks_log.sum
    end
        
    def display_walks()
        walked_distance()
        puts "#{@name} has had #{@walks_log.count} walks and walked #{@total_walked} kms today:"
        for i in (0..(@walks_log.count-1))
            puts "#{i+1}. #{@walks_log[i]} km"
        end 
    end

end


doggo = Dog.new("Roy", "Labrador", 8)
doggo.walk(2)
doggo.walk(1)


doggo2 = Dog.new("Bob", "Labrador", 6)
doggo2.walk(7)
doggo2.walk(3)


doggo.display_walks
doggo2.display_walks