feature "hit points" do
  scenario "want to see player 2 hit point's" do
    sign_in_and_play 

    expect(page).to have_content "Tom has 100 hp"
  end
end