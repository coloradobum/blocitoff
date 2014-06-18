require 'spec_helper'

feature 'When a to-do item is marked as complete, it should be deleted from the to-do list.',  %q{
  As a user
  I want my todo to disapear
  so I can focus on remaing todos 
} do

  scenario 'successfully delete a todo', js: true do
    #create_and_sign_in_user 'user@test.com, 'password'
    user_creates_todo 'Get wine'
    visit todos_path
    expect(page).to have_content('Get wine')
    
    check 'todo_complete'
    expect(page).to_not have_content('Get wine')
  end

end
