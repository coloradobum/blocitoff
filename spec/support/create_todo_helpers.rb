module Features

  def user_creates_todo(text)
    visit new_todo_path
    fill_in 'Description', with: text
    click_button 'Save'
  end
end
