class CreateGalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :galleries do |t|
      t.string :title
      t.text :description
      t.boolean :published
      t.integer :position
      t.timestamps
    end
  end
end
