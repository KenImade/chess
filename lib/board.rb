class ChessBoard
    def initialize
        @board = create_board()
    end

    def create_board()
        board = []
        8.times{|i| board << i = Array.new(8)}
        board
    end
end