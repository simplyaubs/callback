require 'spec_helper'

feature 'user profile page' do

  it 'user has a profile page where they can make a call from' do
    create_user
    sign_in_user
    expect(page).to have_content 'My Profile'
    expect(page).to have_content 'keri@example.com'
    expect(page).to have_content 'Call us at:'
  end
end