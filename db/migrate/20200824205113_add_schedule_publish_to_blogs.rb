class AddSchedulePublishToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :schedule_publish, :boolean
  end
end
