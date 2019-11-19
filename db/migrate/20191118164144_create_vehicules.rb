class CreateVehicules < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicules do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.string :category
      t.integer :capacity
      t.string :country
      t.string :city
      t.string :address
      t.float :daily_price
      t.boolean :permit
      t.boolean :availability
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
