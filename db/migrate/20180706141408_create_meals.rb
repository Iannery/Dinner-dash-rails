class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :title
      t.text :text
      t.decimal :price

      t.timestamps
    end
    
  add_reference :meals, :category, foreign_key: true
  end
end
