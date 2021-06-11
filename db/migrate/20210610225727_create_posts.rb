class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :brand
      t.string :image_url
      t.integer :price
      t.integer :size
      t.string :description
      t.string :website
      t.belongs_to :category, null: false, foreign_key: true
      

      t.timestamps
    end
  end
end
