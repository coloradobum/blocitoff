require 'spec_helper'

feature 'Mark Item as complete',  %q{
  As a user
  I want to mark an item complete
  so that can focus on uncompleted items
} do

  scenario 'delete todo with checked', :js => true do

    create_and_sign_in_user 'tester@test.com', 'password'
    user_creates_todo 'Get Cheese'
    expect(page).to have_content 'Get Cheese'
    check 'todo_complete'
    visit current_path
    expect(page).to_not have_content 'Get Cheese'
  end

end
