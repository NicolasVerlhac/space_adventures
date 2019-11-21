class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :vehicules, dependent: :destroy
  has_many :bookings
  has_many :bookings_as_owner, through: :vehicules, source: :bookings

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, uniqueness: true, presence: true
end
