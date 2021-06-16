class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :brand
      t.string :image
      t.float :price
      t.integer :size
      t.string :description
      t.string :website
      t.belongs_to :category, null: false
      

      t.timestamps
    end
  end
end
