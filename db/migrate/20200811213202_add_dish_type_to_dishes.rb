class AddDishTypeToDishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :dish_type, :string
  end
end
