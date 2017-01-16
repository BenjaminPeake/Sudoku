#create panel and puzzle format

screen = Sudoku_gui.new

#create puzzle

puzzle = Sudoku_logic.new

#solve from logic with input from gui when button pressed

solution = puzzle.solve(screen.get_data)

#display answer from logig onto gui

screen.display(solution)
