json.array! @products.each do |product|
  json.id product.id
  json.name product.namekccj
  json.price product.prices
  json.image_url product.image_url
  json.description product.description 
end 