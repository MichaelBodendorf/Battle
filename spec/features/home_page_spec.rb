# require_relative "./app"

feature "test" do
  scenario "it show Testing infrastructure working!" do
    visit("/")
    expect(page).to have_content "Testing infrastructure working!"
  end
end