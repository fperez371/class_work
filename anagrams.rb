# o log(n)?
def first_anagram(str1,str2)
    strings = str1.chars.permutation.to_a
    strings.each do |string|
        if string.join == str2 
            return true
        end
    end
    false
end

def second_anagram(str1, str2)
    words1 = str1.split('')
    words2 = str2.split('')

    words1.each do |chr|
        target = words2.find_index(chr)
        return false unless target 
        words2.delete_at(target)
    end

    words2.empty?
end

def third_anagram(str1,str2)
    sorted = [str1,str2].map do |str|
        str.split('').sort.join
    end

    sorted.first == sorted.last
end

def fourth_anagram(str1,str2)
    letter_counts1 = Hash.new(0)
    letter_counts2 = Hash.new(0)

    str1.each_char { |letter| letter_counts1[letter] += 1 }
    str2.each_char { |letter| letter_counts2[letter] += 1 }

    letter_counts1 == letter_counts2
end