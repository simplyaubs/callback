require 'spec_helper'

describe Question do
  it 'will save a question to the database' do
    Question.create!(q: 'Tell me about yourself')
  end
end