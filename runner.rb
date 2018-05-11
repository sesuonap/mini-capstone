require 'unirest'

# INDEX ACTION
# response = Unirest.get("http://localhost:3000/api/products")
# puts JSON.pretty_generate(response.body)

# SHOW ACTION
# response = Unirest.get("http://localhost:3000/api/products/1")
# puts JSON.pretty_generate(response.body)

# CREATE ACTION
# response = Unirest.post("http://localhost:3000/api/products",
#                                                               parameters:{
#                                                               name: "boogie-bomb",
#                                                               price: 250,
#                                                               image_url: "https://db.fortnitetracker.com/app/images/fortnite/consumables/boogie-bomb.png",
#                                                               description: "Move ya feet!"
#                                                                 })
# puts JSON.pretty_generate(response.body)

# UPDATE ACTION
# product_id = 9 
# runner_params = {
#                 price: 350
# }
# response = Unirest.patch("http://localhost:3000/api/products/#{product_id}", 
#                                                                             parameters: runner_params
#                                                                             )
# product_hash = response.body
# puts JSON.pretty_generate(product_hash)  

# DESTROY ACTION 
product_id = 8
response = Unirest.delete("http://localhost:3000/api/products/#{product_id}")
data = response.body
puts JSON.pretty_generate(data)









