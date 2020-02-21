def TreeConstructor(strArr)
  arr = []

  strArr.each { |pair| arr << pair[1..-2].split(",").map(&:to_i) }
  
  child = []
  parent = []
  
  arr.each do |pair|
    child << pair[0]
    parent << pair[1]
  end

  child.each { |el| return false if child.count(el) > 2 }
  parent.each { |el| return false if parent.count(el) > 2 }
  true 
end