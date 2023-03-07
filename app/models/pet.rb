class Pet < ApplicationRecord
  belongs_to :shelter
  has_many :appointments, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :type, presence: true
  validates :breed, presence: true
  validates :gender, presence: true
  validates :description, presence: true
  validates :age, presence: true
end
