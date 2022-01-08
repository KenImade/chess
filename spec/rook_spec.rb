require "./lib/pieces/rook.rb"

describe Rook do
    describe ":possible_move" do
        it "returns valid moves" do
            rook = Rook.new([7,0])
            expect(rook.possible_moves). to eql([[6,0],[5,0],[4,0],[3,0],[2,0],[1,0],[0,0],[7,1],[7,2],[7,3],[7,4],[7,5],[7,6],[7,7]])
        end
    end

    describe "#update_moves" do
        it "changes position" do
            rook = Rook.new([7,3])
            rook.update_move([4,3])
            expect(rook.position). to eq([4,3])
        end

        it "changes possible moves" do
            rook = Rook.new([7,3])
            rook.update_move([4,3])
            expect(rook.possible_moves). to eq([[3,3],[2,3],[1,3],[0,3],[4,2],[4,1],[4,0],[4,4],[4,5],[4,6],[4,7],[5,3],[6,3],[7,3]])
        end
    end
end