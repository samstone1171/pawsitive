class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.date :start_date
      t.date :end_date
      t.string :status
      t.integer :total_price
      t.references :pet, null: false, foreign_key: true
      t.references :renter, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
