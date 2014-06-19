require 'spec_helper'

feature 'Auto delete after 7 days',  %q{
  As a user
  I want uncompleted todos to delete after 7 days
  so that I can focus on the important todos
} do

  scenario 'Successfully' do
    create_and_sign_in_user 'test@test.com', 'password'
    user_creates_todo 'Get Bread'
    visit todos_path
    expect(page).to have_content('Get Bread')
    expect(page).to have_content('7 days')
    save_and_open_page
    
    change_creation_date 8
    visit current_path
    expect(page).to_not have_content('Get Bread')
    save_and_open_page 
  end

  private

  def change_creation_date number_of_days_ago
    t = Todo.last
    t.created_at = number_of_days_ago.days.ago
    t.save
  end
end
