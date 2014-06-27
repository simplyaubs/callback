require 'spec_helper'

feature 'Callback' do
  scenario 'User can see app name on homepage' do
    visit '/'
    expect(page).to have_content 'callback'
  end
end