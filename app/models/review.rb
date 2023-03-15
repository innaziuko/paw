class Review < ApplicationRecord
  belongs_to :user
  belongs_to :appointment

  validates :title, presence: true
  validates :comment, presence: true
end
