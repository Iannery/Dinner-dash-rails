class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end

    def show
        @order = Order.find(params[:id])
    end

    def new
    end

    def create
        @meals = Meal.all
        @order = Order.new(order_params)
        @order.save
    end

    def edit
        @order = Order.find(params[:id])
    end

    def update
        @order = Order.find(params[:id])
        if @order.update(order_params)
            redirect_to orders_path
        else
            render 'edit'
        end

    end

    def destroy
		@order = Order.find(params[:id])
		@order.destroy

		redirect_to orders_path
	end

    
    private
    def order_params
        params.require(:order).permit(:price, :user_id, :situation_id)
    end
end