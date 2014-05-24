require 'spec_helper'

feature 'account signup',  %q{
As a user
  I want sign-up for an account
  so that I can track my todo list
} do

  scenario 'Successfully' do
    visit sign_in_path
    fill_in 'Email', with: 'person@example.com'
    fill_in 'Password', with: password
    click_button 'Sign Up'
    expect(page).to have "Welcome #{username}"
  end
  
  scenario 'Unsuccessfully', :pending => true do
    visit sign_in_path
  end

end