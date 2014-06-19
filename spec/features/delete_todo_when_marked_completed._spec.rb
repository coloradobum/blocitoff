require 'spec_helper'

feature 'When a to-do item is marked as complete, it should be deleted from the to-do list.',  %q{
  As a user
  I want my todo to disapear
  so I can focus on remaing todos 
} do

  let(:user) { FactoryGirl.create :user, :confirmed }

  before do
    sign_in_with(user.email, user.password)
  end

  scenario 'successfully delete a todo', js: true do
    user_creates_todo 'Get wine'
    visit todos_path
    expect(page).to have_content('Get wine')
    
    check 'todo_complete'
    expect(page).to_not have_content('Get wine')
  end

end
