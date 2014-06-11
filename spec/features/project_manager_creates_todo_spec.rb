require 'spec_helper'

feature 'Project manager creates TODO',  %q{
  In order to mange my todos
  As a user
  I should be able to create a single to-do list
} do

  scenario 'Successfully' do
    
    

    #create_user_and_login('test@test.com', 'mightypassword')
    #reate(:todo)
    #user_creates_todo 'Meet up with the team'
    #expect(page).to have_content('Your new TODO was saved')
    #expect(page).to have_content('Meet up with the team')
  end

  scenario 'With description missing.' do
    #user_creates_todo ''
    #expect(page).to have_content('Please enter a description.')
  end


  def create_user_and_login(email, password) 
    create_user(email, password)
    sign_in_with(email, password)
  end
  
  def create_user(email, password)
    visit '/users/sign_up' 
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    fill_in 'Password confirmation', with: password
    #user = User.last
    #user.confirm!
    #save_and_open_page
    click_button 'Sign up'
  end

  def sign_in_with(email, password)
    visit new_user_session_path 
  end
end
