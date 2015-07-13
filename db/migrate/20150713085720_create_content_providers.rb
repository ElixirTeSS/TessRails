class CreateContentProviders < ActiveRecord::Migration
  def change
    create_table :content_providers do |t|
      t.text :title
      t.text :name
      t.text :description
      t.text :image_url
      t.text :homepage
      t.integer :node_id

      t.timestamps null: false
    end
  end
end
