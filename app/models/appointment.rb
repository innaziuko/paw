class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  validates :date, presence: true
  validates :time, presence: true
  validates :status, presence: true
end
