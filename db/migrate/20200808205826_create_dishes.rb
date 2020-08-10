class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.decimal :weight
      t.string :weight_unit
      t.decimal :price

      t.timestamps
    end
  end
end
