require "./lib/pieces/king.rb"

describe King do
    describe ":possible_move" do
        it "returns valid moves" do
            king = King.new([7,3])
            expect(king.possible_moves). to eql([[6,3],[6,4],[7,4],[7,2],[6,2]])
        end
    end

    describe "#update_moves" do
        it "changes position" do
            king = King.new([7,3])
            king.update_move([7,4])
            expect(king.position). to eq([7,4])
        end

        it "changes possible moves" do
            king = King.new([7,3])
            king.update_move([7,4])
            expect(king.possible_moves). to eq([[6,4],[6,5],[7,5],[7,3],[6,3]])
        end
    end
end