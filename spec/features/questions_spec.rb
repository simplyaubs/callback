require 'spec_helper'

feature 'interview questions CRUD' do

  before do
    create_user
    sign_in_user
  end

  scenario 'user can create an interview question' do
    create_question
  end

  scenario 'user can edit questions they created' do
    create_question

    click_on 'If you were an animal, which would you be?'
    fill_in 'question[q]', with: 'What is your favorite type of ice cream?'
    click_on 'Submit Changes'
    expect(page).to have_content 'What is your favorite type of ice cream?'
    expect(page).to_not have_content 'If you were an animal, which would you be?'
  end

  scenario 'user can delete questions they created' do
    click_on 'Create New Question'
    fill_in 'question[q]', with: 'Tell me about yourself'
    click_on 'Submit'
    expect(page).to have_content 'Tell me about yourself'

    create_question
    click_on 'Tell me about yourself'
    click_on 'Delete'
    expect(page).to have_content 'If you were an animal, which would you be?'
    expect(page).to_not have_content 'Tell me about yourself'
  end
end