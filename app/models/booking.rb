class Booking < ApplicationRecord
  validates :approved, presence: true
  validates :location, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  belongs_to :users
  belongs_to :friends
end
