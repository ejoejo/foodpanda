class AddPasswordDigestToUser < ActiveRecord::Migration[5.0]
  def change
    # users:table name, password_digest:column name, 資料型別
    add_column :users, :password_digest, :string
  end
end
