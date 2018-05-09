class Api::ProductsController < ApplicationController
  def product_one_action
    @product = Product.first
    render 'product_one_view.json.jbuilder'
  end
  def product_two_action
    @product = Product.second
    render 'product_two_view.json.jbuilder'
  end 
  def product_three_action
    @product = Product.third 
    render 'product_three_view.json.jbuilder'
  end 
  def product_four_action
    @product = Product.fourth
    render 'product_four_view.json.jbuilder'
  end 
  def product_five_action
    @product = Product.fifth
    render 'product_five_view.json.jbuilder'
  end 
  def product_six_action
    @product = Product.sixth
    render 'product_six_view.json.jbuilder'
  end 
  def product_all_action
    @products = Product.all 
    render 'product_all_view.json.jbuilder'
  end 
end
