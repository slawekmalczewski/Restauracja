class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.integer :position
      t.boolean :published
      t.integer :gallery_id 
      t.timestamps
    end
  end
end
