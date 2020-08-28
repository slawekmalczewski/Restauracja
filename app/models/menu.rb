class Menu < ApplicationRecord
  has_and_belongs_to_many :dishes

  scope :is_there_already_default_menu, -> { where("default_menu = ?", true) }

# This function will check if there is any scheduled menu to display, if there is one it will be displayed if not a default one will be displayed
  def self.find_menu_for_day
    temporary_menu = Menu.where("start_date < ? AND end_date > ? AND temporary_menu = ?", DateTime.now, DateTime.now, true)
    default_one = Menu.where("default_menu = ?", true)

    if Menu.where("start_date < ? AND end_date > ? AND temporary_menu = ?", DateTime.now, DateTime.now, true).exists?
      temporary_menu = Menu.where("start_date < ? AND end_date > ? AND temporary_menu = ?", DateTime.now, DateTime.now, true)[0].id
    else
      default_one = Menu.where("default_menu = ?", true).order(created_at: :desc)[0].id
    end
  end


end
