# Given two strings, find the number of common characters
# between them.

def commonCharacterCount(s1, s2)
    string1 = []
    string2 = []
    common = []
    
    (0..s1.length-1).each do |idx|
        string1 << s1[idx]
    end
    (0..s2.length).each do |idx|
        string2 << s2[idx]
    end
    
    string1.each do |letter|
        if string2.include?(letter)
            common << letter
            string2.delete_at(string2.index(letter))
        end
    end

    return common.count

end