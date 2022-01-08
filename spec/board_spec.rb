require "./lib/board.rb"

describe ChessBoard do
    describe "#create_board" do
        it "board length equals 8" do
            board = ChessBoard.new()
            expect(board.create_board().length). to eql(8)
        end

        it "board width equals 8" do
            board = ChessBoard.new()
            expect(board.create_board()[0].length). to eql(8)
        end
    end
end