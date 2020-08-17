class AddCateringMenuToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :catering_menu, :boolean
  end
end
