class AddSituationToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :situation, :string
  end
end
