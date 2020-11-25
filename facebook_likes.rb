#Your code here
def facebook_likes(a)
    len = a.length()
    if len == 0
        likecaption = "No one likes this"
    end 
    if len == 1
        likecaption = "#{a[0]} likes this"
    end
    if len == 2
        likecaption = "#{a[1]} and #{a[0]} like this"
    end
    if len == 3
        likecaption = "#{a[2]}, #{a[1]} and #{a[0]} like this"
    end
    if len > 3  
        likecaption = "#{a[len-1]}, #{a[len-2]} and #{(len -2)} others like this"
    end
    return likecaption
end 


likecaption = facebook_likes(["Alex", "Garret", "Paul", "Aleisha", "Sarah", "Macey"])

puts likecaption