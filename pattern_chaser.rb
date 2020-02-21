def PatternChaser(str)

@str = "aabbaa"
patterns = {}

# Creating a function for each index of the given string
(0..@str.length-1).each do |idx|

  (idx+1..@str.length-1).each do |idx2|
    copy=@str.dup
      chunk = @str[idx..idx2]
      # This chunk groups together the idx with each subsequent index (each idx2),
      # for each idx. As a result, each chronological grouping of letters in the string
      # is accounted for as a "chunk".
      len = chunk.length
      copy[idx..idx2]=""
      patterns[chunk]=len if copy.include?(chunk)
  end
end

return "no null" if patterns.empty?
patterns.each {|k, v| return "yes" + " " + k if v==patterns.value.max}

end




