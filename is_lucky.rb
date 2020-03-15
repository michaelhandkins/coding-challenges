# Ticket numbers usually consist of an even number of digits.
# A ticket number is considered lucky if the sum of the first
# half of the digits is equal to the sum of the second half.

# Given a ticket number n, determine if it's lucky or not.

def isLucky(n)
half1 = []
half2 = []
n_string = n.to_s


firsthalf = (n_string.length / 2) - 1
secondhalfstart = (n_string.length / 2)
secondhalfend = (n_string.length - 1)
(0..firsthalf).each do |idx|
    half1 << n_string[idx].to_i
end

(secondhalfstart..secondhalfend).each do |idx|
    half2 << n_string[idx].to_i
end

return true if half1.inject(:+) == half2.inject(:+)
return false
end