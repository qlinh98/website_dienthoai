class Poll < ApplicationRecord
  validates :comment, :vote_count, presence: true
  
  
  
  belongs_to :product
  belongs_to :user
  
end
