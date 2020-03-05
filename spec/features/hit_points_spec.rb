feature "Hit points" do
  scenario "Player 2 can see Player 1's HP" do
    sign_in_and_play
    expect(page).to have_content "Player 2: 69HP"
  end
end
