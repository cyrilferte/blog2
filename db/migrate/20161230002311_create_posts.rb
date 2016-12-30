class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :category
      t.string :photo
      t.string :author

      t.timestamps
    end
  end
end
