class Question < ActiveRecord::Base

  validates :q, presence: true, uniqueness: true

end
