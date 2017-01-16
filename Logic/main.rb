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

     def sorted
          return [rows,collumns,squares]
     end

     def board
          return board
     end

     def sort (sortee)
          xr = 1
          yr = 1
          sortee.each do
               |number|
               number.each do
                    |num|
                    board[[xr,yr]] = num
                    xr++
               end
               yr ++
               xr = 1
          end
          board.sort!
          #sorts for the rows
          board.each do
               |key, value|
               temp = []
               temp[x-1]=value
               rows[y-1] ||= temp
          end
          #sorts for the collumns
          board.each do
               |key, value|
               temp = []
               temp[y-1] = value
               collumns[x-1]||=temp
          end
          #sorts for the squares
          board.each do
               |key, value|
               if key[0] <4
                    if key[1] <4
                         temp[key[0]+(key[1]-1)*3-1]
                         squares[0] ||= temp
                    elsif key[1] >6
                         temp[key[0]+(key[1]-7)*3-1]
                         squares[3] ||= temp
                    else
                         temp[key[0]+(key[1]-4)*3-1]
                         squares[3] ||= temp
                    end
               elsif key[0] >6
                    if key[1] <4
                         temp[key[0]-6+(key[1]-1)*3-1]
                         squares[3] ||= temp
                    elsif key[1] >6
                         temp[key[0]-6+(key[1]-7)*3-1]
                         squares[3] ||= temp
                    else
                         temp[key[0]-6+(key[1]-4)*3-1]
                         squares[3] ||= temp
                    end
               else
                    if key[1] <4
                         temp[key[0]-3+(key[1]-1)*3-1]
                         squares[3] ||= temp
                    elsif key[1] >6
                         temp[key[0]-3+(key[1]-7)*3-1]
                         squares[3] ||= temp
                    else
                         temp[key[0]-3+(key[1]-4)*3-1]
                         squares[3] ||= temp
                    end
               end
          end
     end
end

end
