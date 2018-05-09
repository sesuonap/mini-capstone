Rails.application.routes.draw do
  namespace :api do 
  # # STEP 1: A ROUTE triggers a controller action
  # # verb "/urls" => "namespace/controllers#action"
  get '/product_1' => 'products#product_one_action'
  get 'product_2' => 'products#product_two_action'
  get 'product_3' => 'products#product_three_action'
  get 'product_4' => 'products#product_four_action'
  get 'product_5' => 'products#product_five_action'
  get 'product_6' => 'products#product_six_action'
  get 'product_all' => 'products#product_all_action'
  end 
end
