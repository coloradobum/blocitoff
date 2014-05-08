require 'spec_helper'

feature 'User sees number of days before to-do is deleted',  %q{
  In order to mange my todos
  As a user
  I should see when my task will be deleted.
} do
  
  background do
    user_creates_todo 'Get milk and eggs'
  end
  
  scenario '7 days before deletion' do
    visit '/todos'
    within('days-left') { expect(page).to have_content('7') }
  end
 end
