require 'spec_helper'

feature 'Project manager creates TODO' do
  scenario 'Successfully' do
    user_creates_todo 'Meet up with the team'
    expect(page).to have_content('Your new TODO was saved')
    expect(page).to have_content('Meet up with the team')
  end

  scenario 'With description missing.' do
    user_creates_todo ''
    expect(page).to have_content('Please enter a description.')
  end

  def user_creates_todo(text)
    visit new_todo_path
    fill_in 'Description', with: text
    click_button 'Save'
  end
end
