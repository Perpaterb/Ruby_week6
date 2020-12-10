def increment_string(input)
    if input[-1, 1] == nil
        return "1"
    else 
        if input[-1, 1].tr('^0-9', '') == ""
            return input << "1"
        elsif input[-1, 1].tr('^0-9', '') == "9"
            i = 1
            while input[-i, 1].tr('^0-9', '') == "9"
                i += 1
            end
            input = input[0...-(i-1)]
            if input[-1, 1].tr('^0-9', '') == ""
                input << "1"
            else
                input = input[0...-1] << (input[-1, 1].to_i + 1).to_s
            end
            for a in 1..(i-1)
                input << "0"
            end
            return input
        else
            return input[0...-1] << (input[-1, 1].to_i + 1).to_s
        end
    end
  end








p increment_string("foo")#, "foo1")
p increment_string("foobar001")#, "foobar002")
p increment_string("foobar1")#, "foobar2")
p increment_string("foobar00")#, "foobar01")
p increment_string("foobar99")#, "foobar100")
p increment_string("")#, "1")
p increment_string("foobar399")#, "foobar400")