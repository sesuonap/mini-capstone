json.id supplier.id
json.name supplier.name
json.email supplier.email
json.phone_number supplier.phone_number
json.products supplier.products.map { |product| product.name}