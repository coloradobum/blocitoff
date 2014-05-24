require 'spec_helper'

feature 'Project manager creates TODO',  %q{
  In order to mange my todos
  As a user
  I should be able to create a single to-do list
} do

  scenario 'Successfully' do
    user_creates_todo 'Meet up with the team'
    expect(page).to have_content('Your new TODO was saved')
    expect(page).to have_content('Meet up with the team')
  end

  scenario 'With description missing.' do
    user_creates_todo ''
    expect(page).to have_content('Please enter a description.')
  end

end
