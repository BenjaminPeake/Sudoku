#create panel and puzzle format

screen = Sudoku_gui.new

#create puzzle

puzzle = Sudoku_logic.new

puzzle.startup(screen.get_data)

#solve from logic with input from gui when button pressed

solution = puzzle.solve

#display answer from logig onto gui

puzzle.display(solution)
