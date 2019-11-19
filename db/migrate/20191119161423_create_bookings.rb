class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :vehicule, foreign_key: true
      t.references :user, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :status
      t.text :owner_review
      t.integer :owner_rating
      t.text :renter_review
      t.integer :renter_rating

      t.timestamps
    end
  end
end
