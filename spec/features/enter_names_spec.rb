feature "Enter names" do
  scenario "Players submitting their names" do
    visit("/")
    fill_in :player_1_name, with: "Player 1"
    fill_in :player_2_name, with: "Player 2"
    click_button "LETS L0L FIGHT!"
    expect(page).to have_content "Player 1 vs. Player 2 in EPIC L0L BATTLE!"
  end
end
