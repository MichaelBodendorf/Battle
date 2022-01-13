def sign_in_and_play 

  visit("/")
  fill_in('first_name', with: 'John')
  fill_in('second_name', with: 'Tom')
  click_button('Save')

end