# o(n^2)
# o(1)
def brute_two_sum(arr, target)
    i = 0
    while i < arr.size
        j = i + 1
        while j < arr.size 
            if arr[i] + arr[j] == target 
                return true
            end
            j += 1
        end 
        i += 1
    end
    false
end

