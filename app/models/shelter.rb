class Shelter < ApplicationRecord
  belongs_to :user
  has_many :pets, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :description, presence: true
end
