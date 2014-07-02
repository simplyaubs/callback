require 'spec_helper'

describe Skill do
  it 'creates a valid record' do
    skill_type = SkillType.create!(name: 'Personality Skills')
    skill = Skill.new(description: 'Wonderful', skill_type_id: skill_type.id)

    expect(skill.valid?).to eq true
  end

  it 'validates presence of description' do
    skill_type = SkillType.create!(name: 'Personality Skills')
    skill = Skill.new(description: nil, skill_type_id: skill_type.id)

    expect(skill.valid?).to eq false
  end
end
