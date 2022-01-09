class Bishop
    attr_accessor :position, :possible_moves

    BISHOPS_MOVES = [
                    [1,1],[2,2],[3,3],[4,4],[5,5],[6,6],[7,7],
                    [1,-1],[2,-2],[3,-3],[4,-4],[5,-5],[6,-6],[7,-7],
                    [-1,-1],[-2,-2],[-3,-3],[-4,-4],[-5,-5],[-6,-6],[-7,-7],
                    [-1,1],[-2,2],[-3,3],[-4,4],[-5,5],[-6,6],[-7,7]
                    ]

    def initialize(position)
        @position = position
        @possible_moves = []
        @possible_moves = get_possible_moves(BISHOPS_MOVES, position)
    end        

    def update_move(move)
        @position = move
        @possible_moves = []
        @possible_moves = get_possible_moves(BISHOPS_MOVES, move)
    end

    private
    def get_possible_moves(moves, position)
        valid_moves = moves.map do |move|
            move.each_with_index.map { |n, i| n + position[i] unless (n + position[i]).negative? || (n + position[i]) > 7}
        end
        valid_moves.delete_if {|move| move.include?(nil)}
    end
end