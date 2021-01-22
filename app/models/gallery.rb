class Gallery < ApplicationRecord
  has_one_attached :cover_image
  has_many :photos, :dependent => :destroy

  def self.losowe_zdjecie_z_galerii
    number_of_photos_in_history_gallery = Gallery.where(:title => "Z naszej historii")[0].photos.count
    random_number=rand(0...number_of_photos_in_history_gallery)
    random_image_from_history = Gallery.where(:title => "Z naszej historii")[0].photos[random_number]
  end

end
