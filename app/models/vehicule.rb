class Vehicule < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: ["JetPack", "Catapulte", "X-wing","Fusée", "Soucoupe", "Canon"]}
  validates :capacity, presence: true
  validates :country, presence: true
  validates :city, presence: true
  validates :address, presence: true
  validates :daily_price, presence: true
  validates :permit, presence: true
  validates :availability, presence: true
end
