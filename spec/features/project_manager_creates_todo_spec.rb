require 'spec_helper'

feature 'Project manager creates TODO',  %q{
  In order to mange my todos
  As a Project Manager 
  I should be able to create a single to-do list
} do

  scenario 'Create a new todo list' do
    #create_and_sign_in_user 'user@test.com, 'password'
    user_creates_todo 'Get Milk'
    visit todos_path
    expect(page).to have_content('Get Milk')
  end
end
