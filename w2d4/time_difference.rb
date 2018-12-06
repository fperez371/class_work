#given a list of integers find the smallest number in the list
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# o(n) ?
def my_min(list)
    min = list.first 
    list.each do |el|
        if el < min 
            min = el 
        end
    end
    min
end

# o(n^2)
def my_min_slower(list)
    list.each_with_index do |ele1, idx1|
        min = true
        list.each_with_index do |ele2,idx2|
            next if idx1 == idx2 
            min = false if ele1 > ele2
        end
        return ele1 if min 
    end
end


def largest_contiguous_subsum(list)
   subs = []

   list.each_index do |idx|
        (idx..list.size - 1).each do |idx2|
            subs << list[idx..idx2]
        end
    end
    subs.map { |sub| sub.inject(:+) }.max
end

def largest_contiguous_subsum(list)
    
end

