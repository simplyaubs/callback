require 'spec_helper'

feature 'interview questions CRUD' do
  scenario 'user can create an interview question' do
    create_question
  end

  scenario 'user can edit questions they created' do
    create_question
    click_on 'Edit'
    fill_in 'question[q]', with: 'What is your favorite type of ice cream?'
    click_on 'Submit Changes'
    expect(page).to have_content 'What is your favorite type of ice cream?'
    expect(page).to_not have_content 'If you were an animal, which would you be?'
  end
end