require "player"

describe Player do
  subject(:player1) { Player.new("Player 1") }
  subject(:player2) { Player.new("Player 2") }

  describe "#name" do
    it "returns the name" do
      expect(player1.name).to eq("Player 1")
    end
  end

  describe "#hit_points" do
    it "returns the hit points as a new object parameter" do
      expect(player1.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe "#attack" do
    it "damages the player" do
      expect(player2).to receive(:receive_damage)
      player1.attack(player2)
    end
  end

  describe "#receive_damage" do
    it "reduces the player HP" do
      expect{ player2.receive_damage }.to change { player2.hit_points }.by(-10)
    end
  end
end
