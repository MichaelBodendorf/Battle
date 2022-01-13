feature "attack" do
  scenario "attack player 2" do
    sign_in_and_play
    click_link('Attack!')

    expect(page).to have_content "John attack Tom"
  end

  scenario "attack player 2 and see hit points change" do
    sign_in_and_play
    click_link('Attack!')
    click_link('Continue')

    expect(page).to have_content "Tom has 90 hp"
  end
end