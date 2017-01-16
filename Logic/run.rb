require_relative 'sudoku_logic'

one = [[nil,nil,7,nil,nil,nil,nil,1,5],[nil,nil,nil,3,9,7,nil,nil,nil],[nil,6,2,nil,1,nil,4,nil,9],
[nil,2,nil,nil,nil,1,5,4,3],[7,nil,nil,4,nil,9,nil,nil,1],[4,8,1,2,nil,nil,nil,6,nil],
[9,nil,6,nil,2,nil,7,3,nil],[nil,nil,nil,9,8,4,nil,nil,nil],[1,5,nil,nil,nil,nil,2,nil,nil]]

one_a = [[8,9,7,6,4,2,3,1,5],[5,1,4,3,9,7,6,8,2],[3,6,2,5,1,8,4,7,9],
[6,2,9,8,7,1,5,4,3],[7,3,5,4,6,9,8,2,1],[4,8,1,2,5,3,9,6,7],
[9,4,6,1,2,5,7,3,8],[2,7,3,9,8,4,1,5,6],[1,5,8,7,3,6,2,9,4]]

puzzle = Sudoku_logic.new

puts one_a==puzzle.solve(one) ? "All good!":"Try again!"
