def queue_time(customers, n)
    queue = Array.new(n) { |i| 0 }
    for i in customers
        pos = queue.each_with_index.min
        queue[pos[1]] += i
    end
    return queue.max
end


p queue_time([], 1)
p queue_time([5], 1)
p queue_time([2], 5)
p queue_time([1,2,3,4,5], 1)
p queue_time([1,2,3,4,5], 100)
p queue_time([2,2,3,3,4,4], 2)
