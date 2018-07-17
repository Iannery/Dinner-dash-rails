class Order < ApplicationRecord
    has_many :order_meals
    has_many :meals, :through => :order_meals
    has_one :cart
end
