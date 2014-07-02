class Skill < ActiveRecord::Base
  belongs_to :skill_type

  validates :description, presence: true
end
