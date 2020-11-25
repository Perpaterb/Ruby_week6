#look for the first two elements that are out of order and swaps them
arr = [5, 22, 29, 39, 19, 51, 78, 96, 84]
i = 0
while (i  < arr.size - 1 and arr[i] < arr[i + 1])
    i = i + 1 
end
# remove (puts i) no need.
# remove indentation no char swap command
# added a memory var (m) for value at position i
m = arr[i]
arr[i] = arr[i + 1]
# replace i + 1 with m 
arr[i + 1] = m
