class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  

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
