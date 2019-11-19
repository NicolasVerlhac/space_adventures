class Vehicule < ApplicationRecord
  belongs_to :user
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
