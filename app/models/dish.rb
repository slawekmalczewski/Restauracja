class Dish < ApplicationRecord
  has_and_belongs_to_many :menus


  def extended_info_for_check_boxes
    "#{ name } (#{weight}#{weight_unit}) &thinsp; --> &thinsp; #{ price } zł <span class='small'>(Cena uaktualniona dnia: #{updated_at.strftime('%d %b, %Y')}) </span>".html_safe
  end

  def self.dish_price_older_than_two_months
    out_of_date_price = Dish.where("updated_at <= ?", DateTime.now - 60.days).order(updated_at: :asc)
  end


end
