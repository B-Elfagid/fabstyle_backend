class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :brand
      t.string :image
      t.integer :price
      t.integer :size
      t.string :description
      t.string :website
      t.integer :category_id

      t.timestamps
    end
  end
end
