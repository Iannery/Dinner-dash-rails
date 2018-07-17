class Meal < ApplicationRecord
	mount_uploader :image, ImageUploader
	validates_presence_of :image
	
	belongs_to :category
	has_many :order_meals
    has_many :orders, :through => :order_meals
end
