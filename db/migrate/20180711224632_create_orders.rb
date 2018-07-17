class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.float :price
      
      t.timestamps
    end
    add_reference :orders, :user, foreign_key: true
  end
end
