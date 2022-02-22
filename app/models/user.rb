class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :name, presence: true, uniqueness: true
  validates :password, presence: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  # validates :bio, presence: true
  has_many :bookings
  has_many :friends, dependent: :destroy
end
