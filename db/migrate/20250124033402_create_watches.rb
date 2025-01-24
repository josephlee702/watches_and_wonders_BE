class CreateWatches < ActiveRecord::Migration[7.1]
  def change
    create_table :watches do |t|
      t.string :reference_number
      t.string :model
      t.integer :price
      t.string :movement
      t.integer :year_of_production
      t.string :case_material
      t.string :case_diameter
      t.string :description
      t.string :bracelet
      t.string :lug_to_lug
      t.boolean :lume
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
