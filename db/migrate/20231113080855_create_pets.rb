class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :gender
      t.string :species
      t.string :life_stage
      t.string :size
      t.text :description
      t.integer :price_per_day
      t.references :lister, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
