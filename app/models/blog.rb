class Blog < ApplicationRecord
  has_rich_text :body
  has_one_attached :main_poster

  scope :order_by_newest_ad, -> { order(created_at: :desc)}
  scope :order_by_valid_from, -> { order(valid_from: :asc)}

  scope :is_published, -> { where(published: :true)}

  scope :not_published, -> { where(not_publish: :true)}

  #this function will determine if blog post/ad with configured publish schedule should be displayed today

  def self.should_i_be_displayed_today
    #collect all ads that are due to publish or are published
    #sort the collection of ads to be published accorind to the date they were updated_at
    scheduled_ad_for_today = Blog.where("valid_from <= ? AND valid_to >= ? AND schedule_publish = ? OR published = ?", DateTime.now, DateTime.now, true, true).order(updated_at: :desc)
  end

  def self.najnowszy_opublikowany_artykul
    x=Blog.where(:published => true).order(created_at: :asc).first    
  end

end


number_of_photos_in_history_gallery = Gallery.where(:title => "Z naszej historii")[0].photos.count
random_number=rand(0...number_of_photos_in_history_gallery)
random_image_from_history = Gallery.where(:title => "Z naszej historii")[0].photos[random_number]
