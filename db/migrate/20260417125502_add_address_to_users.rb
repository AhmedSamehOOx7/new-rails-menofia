class AddAddressToUsers < ActiveRecord::Migration[8.1]
  def up
    return if column_exists?(:users, :address)

    add_column :users, :address, :string
    execute <<~SQL
      UPDATE users
      SET address = ''
      WHERE address IS NULL
    SQL
    change_column_null :users, :address, false
  end

  def down
    remove_column :users, :address if column_exists?(:users, :address)
  end
end
 
