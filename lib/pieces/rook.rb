class Rook
    attr_accessor :position, :possible_moves

    ROOKS_MOVES = [[-1,0],[-2,0],[-3,0],[-4,0],[-5,0],[-6,0],[-7,0],
                    [0,-1],[0,-2],[0,-3],[0,-4],[0,-5],[0,-6],[0,-7],
                    [0,1],[0,2],[0,3],[0,4],[0,5],[0,6],[0,7],
                    [1,0],[2,0],[3,0],[4,0],[5,0],[6,0],[7,0]
                ]

    def initialize(position)
        @position = position
        @possible_moves = []
        @possible_moves = get_possible_moves(ROOKS_MOVES, position)
    end        

    def update_move(move)
        @position = move
        @possible_moves = []
        @possible_moves = get_possible_moves(ROOKS_MOVES, move)
    end

    private
    def get_possible_moves(moves, position)
        valid_moves = moves.map do |move|
            move.each_with_index.map { |n, i| n + position[i] unless (n + position[i]).negative? || (n + position[i]) > 7}
        end
        valid_moves.delete_if {|move| move.include?(nil)}
    end
end