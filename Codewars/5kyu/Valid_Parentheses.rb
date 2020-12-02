def valid_parentheses(string)
    new_string = ""
    arr = string.chars
    for i in arr
        if i == ")" or i == "("
            new_string << i
        end
    end
    run = 1
    while run == 1
        nopen = new_string.count("(")
        nclose = new_string.count(")")
        if nclose + nopen == 0
            return true
            run = 0
        end
        if nclose == nopen
            if new_string.chars.first == "(" and new_string.chars.last == ")"
                new_string = removeset(new_string)
            else
                return false
                run = 0
            end      
        else
            return false
            run = 0
        end
    end

end
def removeset(new_string)
    new_string.sub!("(", "")
    new_string.sub!(")", "")
    return new_string
end


p valid_parentheses("())(()")#,false)

# p valid_parentheses("  (")#,false)
# p valid_parentheses(")test")#,false)
# p valid_parentheses("")#,true)
# p valid_parentheses("hi())(")#,false)
# p valid_parentheses("hi(hi)()")#,true)