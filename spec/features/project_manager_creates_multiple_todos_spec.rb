require 'spec_helper'

feature 'Project manager creates multiple TODOs', %q{
  In order to manage my many todos
  As a user
  I should be able to create multiple to-do items on my to-do list
} do

  scenario 'successfully' do
    create_and_sign_in_user 'test@test.com', 'bigbadpassword' 
    3.times { |i| user_creates_todo "todo #{i}" }
    expect(page).to have_content('Your TODO was saved')
    expect(page).to have_content('todo 0')
    expect(page).to have_content('todo 1')
    expect(page).to have_content('todo 2')
  end

end
