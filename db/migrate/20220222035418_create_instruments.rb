class CreateInstruments < ActiveRecord::Migration[5.1]
  def change
    create_table :instruments do |t|
      t.string :brand
      t.string :model
      t.text :description
      t.string :condition
      t.string :color
      t.string :finish
      t.string :title
      t.decimal :price, precision: 5, scale: 2, default: 0
      t.string :name

      t.timestamps
    end
  end
end
