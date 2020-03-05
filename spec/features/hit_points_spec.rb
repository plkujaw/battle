feature "Hit points" do
  scenario "Player 2 can see Player 1's HP" do
    visit("/")
    fill_in :player_1_name, with: "Player 1"
    fill_in :player_2_name, with: "Player 2"
    click_button "LETS L0L FIGHT!"
    expect(page).to have_content "Player 2: 69HP"
  end
end
