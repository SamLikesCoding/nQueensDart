# N Queens Problem
Revisiting an old backtracking algorithm. One of my good friends and good programmer
asked how to do so and to make it different, in dart language. This grabbed my curiosity and
i tried. So here it is

# main.dart

Contains a class NQueens which has 2 fields. 
1. n => Board Size
2. board => Solution List where index correspond to row and value corresponds to column

Methods:
1. _canPlace(int r, int c)
  This method checks whether a queen can be placed at (x,y) of the board
2. solve()
  Updates board with the solution.
3. chessboard()
  shows the final result

