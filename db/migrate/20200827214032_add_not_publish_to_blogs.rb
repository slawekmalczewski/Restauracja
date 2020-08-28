class AddNotPublishToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :not_publish, :boolean
  end
end
