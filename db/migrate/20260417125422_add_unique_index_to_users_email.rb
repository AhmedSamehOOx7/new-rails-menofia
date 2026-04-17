class AddUniqueIndexToUsersEmail < ActiveRecord::Migration[8.1]
  def up
    add_column :users, :email, :string unless column_exists?(:users, :email)
    add_index :users, :email, unique: true unless index_exists?(:users, :email, unique: true)
  end

  def down
    remove_index :users, :email if index_exists?(:users, :email)
    remove_column :users, :email if column_exists?(:users, :email)
  end
end
