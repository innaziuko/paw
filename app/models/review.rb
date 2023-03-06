class Review < ApplicationRecord
  belongs_to :user
  belongs_to :shelter

  validates :title, presence: true
  validates :comment, presence: true
end
