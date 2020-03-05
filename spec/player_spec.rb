require "player"

describe Player do
  subject(:player1) { Player.new("Player 1") }

  describe "#name" do
    it "returns the name" do
      expect(player1.name).to eq("Player 1")
    end
  end
end
