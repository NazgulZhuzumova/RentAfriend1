class Friend < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :age, numericality: { only_integer: true }, presence: true
  validates :location, presence: true
  validates :gender, presence: true
  validates :price, numericality: { only_integer: true }, presence: true
  belongs_to :users
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
end
