class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :product_categories
  has_many :categories, through: :product_categories
  

  def categories
    product_categories.map { |product_category| product_category.category }
  end 
  

  def is_discounted?
   price < 400
  end

  def tax 
    price * 0.09 
  end 

  def total
    tax + price 
  end 
  
  






end
