require 'spec_helper'

describe Question do
  it 'will save a question to the database' do
    Question.create!(q: 'Tell me about yourself')
  end

  it 'validates presence of q' do
    question = Question.new(q: nil)

    expect(question.valid?).to eq false
  end

  it 'validates that questions are unique' do
    Question.create!(q: 'What is your name')
    duplicate_question = Question.new(q: 'What is your name')

    expect(duplicate_question.valid?).to eq false
  end
end
