class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, uniqueness: true

  has_many :appointments
  has_many :shelters, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_pets, through: :favorites, source: :pet

  has_one_attached :photo
end
