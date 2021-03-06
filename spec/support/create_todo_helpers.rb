module Features

  def user_creates_todo(text)
    visit new_todo_path
    fill_in 'Description', with: text
    click_button 'Save'
  end
  
  def create_and_sign_in_user email, password
    create_user email, password
    sign_in_with email, password
  end
  
  def create_user(email, password)
    visit new_user_registration_path
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    fill_in 'Password confirmation', with: password
    click_button 'Sign up'
    User.last.confirm!
  end

  def sign_in_with(email, password)
    visit new_user_session_path 
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_button 'Sign in'
    #save_and_open_page
  end
end
