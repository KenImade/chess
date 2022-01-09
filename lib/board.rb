class ChessBoard
    def initialize
        @board = create_board()
    end

    def create_board()
        board = []
        8.times{|i| board << i = Array.new(8)}
        board
    end

    def create_board_keys
        chess_cells = []
        (0..7).each do |i|
            (0..7).each do |j|
                chess_cells << [j,i]
            end
        end

        board_keys =  {}
        index = 0
        ("a".."h").each do |i|
            ("1".."8").each do |j|
                board_keys[i+j] = chess_cells[index]
                index += 1
            end
        end
        board_keys
    end
end