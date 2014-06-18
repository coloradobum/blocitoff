require 'spec_helper'

feature 'User sees number of days before to-do is deleted',  %q{
  In order to mange my todos
  As a user
  I should see when my task will be deleted.
} do
  
  scenario '7 days before deletion' do
    ###create_and_sign_in_user 'user@test.com', 'passwordcrazy'
    user_creates_todo 'Get milk' 
    within('td.days-left') { expect(page).to have_content('7 days') }
  end
 end
