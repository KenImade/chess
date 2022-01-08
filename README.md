# chess


#### DESCRIPTION
Chess is an abstract strategy game and involves no hidden information. It is played on a square chessboard with 64 squares arranged in an eight-by-eight grid. At the start, each player (one controlling the white pieces, the other controlling the black pieces) controls sixteen pieces: one king, one queen, two rooks, two knights, two bishops, and eight pawns. The object of the game is to checkmate the opponent's king, whereby the king is under immediate attack (in "check") and there is no way for it to escape. There are also several ways a game can end in a draw. 

### HOW I WILL BUILD THE GAME
---

**The Board Class**
1. The board class will be responsible for displaying the board and also the pieces on the board.
2. To display the pieces on the board, the board will access the position attribute in the different chess piece classes.


**Module Movement**
Will be responsible for holding the possible movements that each piece can make. It will also house the `possible_moves` function to validate the moves that the piece can take from its current position.