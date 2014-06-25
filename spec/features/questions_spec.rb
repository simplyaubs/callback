require 'spec_helper'

feature 'interview questions CRUD' do
  scenario 'user can create an interview question' do
    visit '/'
    click_on 'Create New Question'
    fill_in 'question[q]', with: 'If you were an animal, which would you be?'
    click_on 'Submit'
    expect(page).to have_content 'If you were an animal, which would you be?'
  end
end