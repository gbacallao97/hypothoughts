class AlterTheoriesAddUserIdColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :theories, :user_id, :integer
    add_index :theories, :user_id
  end
end
