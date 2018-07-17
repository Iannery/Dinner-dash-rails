class OrderMealsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :order_meals do |t|
      t.integer :quantity
    end
    add_reference :order_meals, :meals, foreign_key: true
    add_reference :order_meals, :orders, foreign_key: true
  end  
end
