class CreatePosts < ActiveRecord::Migration[8.1]
  def change
    create_table :posts, if_not_exists: true do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
