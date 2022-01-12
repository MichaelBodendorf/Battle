# require_relative "./app"

# feature "test" do
#   scenario "it show Testing infrastructure working!" do
#     visit("/")
#     expect(page).to have_content "Testing infrastructure working!"
#   end
# end

feature "names" do
  scenario "expect players to fill in their names" do
    visit("/")
    fill_in('first_name', with: 'John')
    fill_in('second_name', with: 'Tom')
    click_button('Save')

    save_and_open_page

    expect(page).to have_content "John vs Tom" 
  end
end