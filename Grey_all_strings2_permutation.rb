def permutations(string)
    given_array = string.chars
    answer = given_array.permutation.to_a.map(&:join)
    return answer.uniq
end

answer = permutations("ab")
p answer
