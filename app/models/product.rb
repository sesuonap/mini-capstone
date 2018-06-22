class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :product_categories
  has_many :categories, through: :product_categories

    validates :name, presence: true 
    validates :name, uniqueness: true 
    validates :price, uniqueness: true
    validates :price, numericality: true 
    validates :price, numericality: { greater_than: 0 }
    validates :description, length: { in: 0..500 }


  

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
