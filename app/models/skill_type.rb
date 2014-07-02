class SkillType < ActiveRecord::Base
  has_many :skills

  validates :name, uniqueness: true, case_sensitive: false, presence: true
end
