class PagesController < ApplicationController
  def home
    render layout: 'public_index'
  end

  def about
  end

  def contact
  end

  def daymenu
    @menus = Menu.all
    menuID = Menu.find_menu_for_day
    @selected_menu = Menu.where(:id => menuID).first
  end
end
