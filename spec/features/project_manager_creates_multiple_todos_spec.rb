require 'spec_helper'

feature 'Project manager creates multiple TODOs', %q{
  In order to manage my many todos
  As a user
  I should be able to create multiple to-do items on my to-do list
} do

  scenario 'successfully' do
    3.times { user_creates_todo 'message 1' }
    expect(page).to have_content('Your new TODO was saved')
    expect(page).to have_content('message 1')
    expect(page).to have_content('message 1')
    expect(page).to have_content('message 1')
  end

end
