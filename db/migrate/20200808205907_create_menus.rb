class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :dish_id

      t.timestamps
    end
  end
end
