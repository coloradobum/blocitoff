module Features

  def user_creates_todo(text)
    visit new_todo_path
    fill_in 'Description', with: text
    click_button 'Save'
  end
  
  def create_user(email, password)
    visit new_user_registration_path
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    fill_in 'Password confirmation', with: password
    click_button 'Sign up'
    user = User.last
    user.confirm!
  end

  def sign_in_with(email, password)
    visit new_user_session_path 
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_button 'Sign in'
    expect(page).to have_content("Logged in as #{email}")
  end
end
