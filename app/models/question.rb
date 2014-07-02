class Question < ActiveRecord::Base

  validates :q, uniqueness: true

end