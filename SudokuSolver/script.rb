require_relative 'sudoku_validator'
require_relative 'sudoku_solver'
require_relative 'output'

sudoku = [[5, 3, 0, 0, 7, 0, 0, 0, 0],
          [6, 0, 0, 1, 9, 5, 0, 0, 0],
          [0, 9, 8, 0, 0, 0, 0, 6, 0],
          [8, 0, 0, 0, 6, 0, 0, 0, 3],
          [4, 0, 0, 8, 0, 3, 0, 0, 1],
          [7, 0, 0, 0, 2, 0, 0, 0, 6],
          [0, 6, 0, 0, 0, 0, 2, 8, 0],
          [0, 0, 0, 4, 1, 9, 0, 0, 5],
          [0, 0, 0, 0, 8, 0, 0, 7, 9]]

# sudoku = [[5, 0, 0, 0, 0, 7, 0, 0, 0],
#           [0, 9, 0, 0, 0, 8, 0, 0, 6],
#           [0, 0, 7, 0, 2, 0, 1, 0, 0],
#           [0, 4, 0, 0, 0, 6, 0, 0, 8],
#           [0, 0, 0, 5, 0, 0, 0, 3, 0],
#           [0, 0, 1, 0, 9, 0, 2, 0, 0],
#           [0, 3, 0, 0, 0, 0, 0, 4, 0],
#           [8, 0, 0, 0, 0, 0, 9, 0, 0],
#           [0, 0, 2, 0, 0, 0, 0, 0, 7]]

# sudoku = [[0, 0, 0, 0, 0, 0, 0, 0, 0],
#           [0, 0, 0, 0, 0, 0, 0, 0, 0],
#           [0, 0, 0, 0, 0, 0, 0, 0, 0],
#           [0, 0, 0, 0, 0, 0, 0, 0, 0],
#           [0, 0, 0, 0, 0, 0, 0, 0, 0],
#           [0, 0, 0, 0, 0, 0, 0, 0, 0],
#           [0, 0, 0, 0, 0, 0, 0, 0, 0],
#           [0, 0, 0, 0, 0, 0, 0, 0, 0],
#           [0, 0, 0, 0, 0, 0, 0, 0, 0]]

puts 'Initial sudoku table:'
print_two_dimensional_array(sudoku)

valid = validate_sudoku(sudoku)
if valid
  solved_sudoku = solve_sudoku(sudoku)
  puts ''
  puts 'Solved sudoku:'
  print_two_dimensional_array(solved_sudoku)
else
  puts 'Your sudoku is invalid!'
end
