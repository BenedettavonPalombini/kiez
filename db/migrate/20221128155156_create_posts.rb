class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :category
      t.string :duration
      t.integer :price
      t.boolean :hidden
      t.boolean :solved

      t.timestamps
    end
  end
end
