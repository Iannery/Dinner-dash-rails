class MealsController < ApplicationController
	# before_action :is_admin?, :only => [:create, :new, :destroy]
	def new
	end

	def create
		@meal = Meal.new(meals_params)
		@meal_categories= Category.all
		@meal.save
		redirect_to @meal
	end
	
	def show
		@meal = Meal.find(params[:id])
	end
	
    def edit
        @meal = Meal.find(params[:id])
	end
	
	def update
		@meal = Meal.find(params[:id])
		@meal_categories= Category.all
        if @meal.update(meal_params)
			redirect_to meals_path

        else
        render :edit
        end 
    end
	def index
		@meals = Meal.where(available: true)
	end

	def destroy
		@meal = Meal.find(params[:id])
		@meal.destroy

		redirect_to meals_path
	end
	private
	def meal_params
		params.require(:meal).permit(:title, :text, :price, :image, :category_id, :available)
	end

	def meals_params
		params.require(:meals).permit(:title, :text, :price, :image, :category_id, :available)
	end
end
