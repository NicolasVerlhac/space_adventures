class Booking < ApplicationRecord
  belongs_to :vehicule
  belongs_to :user

  # validates :owner_rating, inclusion: { in: [1, 2, 3, 4, 5] }
  # validates :renter_rating, inclusion: { in: [1, 2, 3, 4, 5] }
  # validates :start_date, presence: true
  # validates :end_date, presence: true
  # validates :status, presence: true, default: false
end
