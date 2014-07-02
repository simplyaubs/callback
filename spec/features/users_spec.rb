require 'spec_helper'

feature 'User' do

  scenario 'user can register' do
    visit root_path
    click_on 'Register'
    fill_in 'Email', with: 'keri@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Register'
    within("nav") do
      expect(page).to have_content 'keri@example.com'
    end

  end

  scenario 'user can sign in' do
    create_user
    visit root_path
    click_on 'Sign in'
    fill_in 'Email', with: 'keri@example.com'
    fill_in 'Password', with: 'password'
    click_on 'Sign in'
    expect(page).to have_content 'Successfully signed in!'
  end

  scenario 'user can log out' do
    create_user
    sign_in_user
    click_on 'Sign out'
    expect(page).to have_content 'Successfully signed out!'
    expect(page).to_not have_content 'keri@example.com'
  end

  scenario 'user sees errors if they try to register with a duplicate email' do
    create_user
    visit root_path
    click_on 'Register'
    fill_in 'Email', with: 'keri@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Register'
    expect(page).to have_content 'Email has already been taken'
  end

  scenario 'sign in and register options not visible when user is signed in' do
    create_user
    visit root_path
    expect(page).to_not have_content 'Sign out'
    sign_in_user
    expect(page).to_not have_content 'Sign in'
    expect(page).to_not have_content 'Register'
  end

end