class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.boolean :published
      t.datetime :valid_from
      t.datetime :valid_to
      t.text :main_poster
      t.text :thumb_poster

      t.timestamps
    end
  end
end
