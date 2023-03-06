class Shelter < ApplicationRecord
  belongs_to :user
  has_many :pets, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :description, presence: true
end
