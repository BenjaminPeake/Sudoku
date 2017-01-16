class Sudoku_logic

     rows = []
     collumns = []
     squares = []

     board = {}

     finnished

     def solve (unfinished)
          sort unfinished
          finnished = unfinished
          return finnished
     end

     def sort (sortee)
          xr = 1
          yr = 1
          sortee.each do
               |number|
               number.each do
                    |num|
                    board[(xr,yr)] = num
                    xr++
               end
               yr ++
               xr = 1
          end
          board.each do
               |key, value|
               
          end
     end
end

end
