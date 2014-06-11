require 'spec_helper'

feature 'Project manager creates TODO',  %q{
  In order to mange my todos
  As a Project Manager 
  I should be able to create a single to-do list
} do

  scenario 'Create a new todo list' do
    create_user('user@test.com', 'superduperpassword')
    sign_in_with('user@test.com', 'superduperpassword')
    expect(page).to have_content('My Todo List')
  end
end
