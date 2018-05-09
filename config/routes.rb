Rails.application.routes.draw do
  namespace :api do 
  # # STEP 1: A ROUTE triggers a controller action
  # # verb "/urls" => "namespace/controllers#action"
  get '/product_one_url' => 'products#product_one_action'
  get 'product_two_url' => 'products#product_two_action'
  get 'product_three_url' => 'products#product_three_action'
  get 'product_four_url' => 'products#product_four_action'
  get 'product_five_url' => 'products#product_five_url'
  get 'product_six_url' => 'products#product_six_url'
  end 
end
