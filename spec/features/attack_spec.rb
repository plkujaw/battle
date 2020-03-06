feature "Attacking" do
  scenario "Player 1 attacks Player 2" do
    sign_in_and_play
    click_button "Attack!!"
    expect(page).to have_content "Player 1 attacked(!!) Player 2"
  end

  scenario "Player 1's attack reduces Player 2's HP by 10"  do
    sign_in_and_play
    click_button "Attack!!"
    click_button "OK!"
    expect(page).not_to have_content "Player 2: 69HP"
    expect(page).to have_content "Player 2: 59HP"
  end
end
