class Api::OrdersController < ApplicationController
  before_action :authenticate_user
  
  def create 

    @order = Order.create(user_id: current_user.id)
    carted_products.update_all(status: "purchased", order_id: @order.id) 

    @order.calculate_cart 


    @order.save 

    render 'show.json.jbuilder'
  end 

  def show
    @order = Order.find(params[:id])
    render 'show.json.jbuilder'
  end 

end
