def sign_in_user
  visit root_path
  click_on 'Sign in'
  fill_in 'Email', with: 'keri@example.com'
  fill_in 'Password', with: 'password'
  click_on 'Sign in'
end