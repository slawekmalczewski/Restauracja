class Gallery < ApplicationRecord
  has_one_attached :cover_image
  has_many :photos, :dependent => :destroy

  
end
