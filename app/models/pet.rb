class Pet < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  belongs_to :shelter, class_name: "User"

  validates :name, presence: true
  validates :type, presence: true
  validates :breed, presence: true
  validates :gender, presence: true
  validates :description, presence: true
  validates :age, presence: true

end
