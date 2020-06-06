// N - Queens problem
class nQueens {

  final int n; // No of Queens
  List<List<int>> board; // The chessboard

  nQueens(this.n){

    // Initalize the board
    board = List<List<int>>.generate(n, (x) {
      return List<int>.generate(n, (x) => 0);
    });

    // Solving the problem
    var res = solve(0);

    // Checking solvability
    if (!res) {
      print("Solution : not computable");
      return ;
    }
  }

  // To show the result
  void chessboard() {
    for (var row in board) {
      print(row.toString());
    }
  }

  // Function to check, whether it is possible to
  // place a piece in the square
  bool canPlace(r, c){

    // Checking if there's piece
    for (var i = 0; i < c; i++) {
      if (board[r][i] == 1) {
        return false; 
      }
    }

    // Seeking there's piece in lower diagonal
    for (
      var i = r,j = c; 
      i < n && j >= 0;
      i++, j--
    ) {
      if (board[i][j] == 1) {
        return false;
      }
    }

    // Seeking there's a piece in upper diagonal
    for (
      var i = r,j = c;
      i >= 0 && j >= 0;
      j--, i--
    ) {
      if (board[i][j] == 1) {
        return false;
      }
    }

    // if there's no problem
    return true;  
  }

  // The solving approach : recursion
  bool solve(c) {

    // If all pieces are placed
    if (n<=c) {
      return true;
    }

    // The logic happends here!!
    for (var i = 0; i < n; i++) {
      if (canPlace(i, c)) {
        // Placing the piece if it's possible
        board[i][c] = 1;
        if (solve(c+1)) {
          return true;
        }
        // Backtracking
        board[i][c] = 0;
      }
    }
    return false;
  }
}

void main() {
  var problem = nQueens(8);
  problem.chessboard();
}