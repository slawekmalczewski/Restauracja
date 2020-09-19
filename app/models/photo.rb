class Photo < ApplicationRecord
  belongs_to :gallery
  has_one_attached :photo_file


  def self.najnowsze_dodane_zdjecie
    najnowsze_zdjecie = Photo.order(created_at: :asc).first
  end


end
