class AddNomeAndAdminToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nome, :string
    add_column :users, :admin, :boolean
  end
end
