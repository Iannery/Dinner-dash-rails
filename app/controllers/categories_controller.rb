class CategoriesController < ApplicationController
    before_action :set_category, :only => [:update]
    
    before_action :is_admin?, :only => [:create, :new, :destroy]

    def index
        @categories = Category.all
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(
            name: params[:category][:name]
        )
        @category.save
        redirect_to categories_path
        end

    def destroy
        @category = Category.find(params[:id])
        @category.destroy
        redirect_to categories_path
    end

    def edit

        @category = Category.find(params[:id])
    end

    def set_category
        @category = Category.find(params[:id])
    end

    def update
        if @category.update(category_params)
        redirect_to categories_path

        else
        render :edit
        end 
    end

    def show
        @category = Category.find(params[:id])
    end
    private
    def category_params
        params.require(:category).permit(:name, :id)
    end 
end
