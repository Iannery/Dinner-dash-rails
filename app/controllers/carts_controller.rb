class CartsController < ApplicationController
    def new
    end

    def create
        @cart = Cart.new(cart_params)

        @cart.save
    end

    def index
        @cart = Cart.all
    end

    def show
        @cart = Cart.find(params[:id])
    end
    
    def edit
        @cart = Cart.find(params[:id])
    end
    
    def destroy
        @cart = Cart.find(params[:id])
        @cart.destroy

        redirect_to orders_path
    end
end

private
  def cart_params
    params.require(:cart).permit(:meals_id, :order_id, :user_id)
  end
end