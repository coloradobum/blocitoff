require 'spec_helper'

feature 'account signup',  %q{
  As a user
  I want sign-up for an account
  so that I can track my todo list
} do

  scenario 'Successfully' do
    create_user('user@test.com', 'superpassword')
    sign_in_with('user@test.com', 'superpassword')
  end
end
