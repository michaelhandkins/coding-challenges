def LargestFour(arr)
  # If the size of the array is greater than 3, the array will be sorted from the 4th
  # highest to the highest number. Then, all of the numbers will be added
  # together using the inject method. If the array is not higher than 4 numbers,
  # all numbers will be added together.
  return arr.size > 3 ? arr.sort[-4..-1].inject(:+) : arr.inject(:+)

end