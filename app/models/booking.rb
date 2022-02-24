class Booking < ApplicationRecord
  validates :location, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  belongs_to :user
  belongs_to :friend
end
