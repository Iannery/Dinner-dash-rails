class UsersController < ApplicationController
    def show
		@meal = Meal.find(params[:id])
	end

	def index
		@meals = Meal.all
	end

	def destroy
		@meal = Meal.find(params[:id])
		@meal.destroy

		redirect_to meals_path
	end
	private
	def meal_params
		params.require(:meal).permit(:title, :text, :price, :image, :category_id)
	end
end
