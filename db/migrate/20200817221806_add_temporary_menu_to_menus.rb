class AddTemporaryMenuToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :temporary_menu, :boolean
  end
end
