class AddQuantityToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :quantity, :integer
  end
end
