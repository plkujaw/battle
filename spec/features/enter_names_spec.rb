feature "Enter names" do
  scenario "Players submitting their names" do
    sign_in_and_play
    expect(page).to have_content "Player 1 vs. Player 2 in EPIC L0L BATTLE!"
  end
end
