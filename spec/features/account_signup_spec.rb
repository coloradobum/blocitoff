require 'spec_helper'

feature 'account signup',  %q{
  As a user
  I want sign-up for an account
  so that I can track my todo list
} do

  scenario 'Successfully' do
    create_and_sign_in_user 'user@test.com', 'password'
    expect(page).to have_content('My Todo List') 
  end

end
