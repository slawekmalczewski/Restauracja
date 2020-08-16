class Dish < ApplicationRecord
  has_and_belongs_to_many :menus


  def extended_info_for_check_boxes
    "#{ name } (#{weight}#{weight_unit}) - #{ price } zl / #{updated_at}"
  end


end
