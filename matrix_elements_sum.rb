# After becoming famous, the CodeBots decided to move into
# a new building together. Each of the rooms has a different
# cost, and some of them are free, but there's a rumour that 
# all the free rooms are haunted! Since the CodeBots are quite
# superstitious, they refuse to stay in any of the free rooms,
# or any of the rooms below any of the free rooms.

# Given matrix, a rectangular matrix of integers, where each 
# value represents the cost of the room, your task is to return
# the total sum of all rooms that are suitable for the CodeBots
# (ie: add up all the values that don't appear below a 0).

def matrixElementsSum(matrix)
(0..matrix.length-2).each do |floor_number|

    (0..matrix[floor_number].length-1).each do |column_number|
        if matrix[floor_number][column_number] == 0
            matrix[floor_number+1].delete_at(column_number)
            matrix[floor_number+1].insert(column_number, 0)
        end
    end
    
end

return matrix.flatten.inject(:+)

end