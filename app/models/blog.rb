class Blog < ApplicationRecord
  has_rich_text :body

  scope :order_by_newest_ad, -> { order(created_at: :desc)}
  scope :order_by_valid_from, -> { order(valid_from: :asc)}

  scope :is_published, -> { where(published: :true)}

end
