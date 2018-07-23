Rails.application.routes.draw do
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, constraints: { format: 'xml' } do
    namespace :v1 do
    	get '/product_lists' => 'api#product_lists'
      post '/add_product' => 'api#add_product'
      post '/update_product/:id' => 'api#update_product'
      get '/show/:id' => 'api#show'
      delete '/destroy/:id' => 'api#destroy'
    end
  end

  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
    	get '/product_lists' => 'api#product_lists'
      post '/add_product' => 'api#add_product'
      post '/update_product/:id' => 'api#update_product'
      get '/show/:id' => 'api#show'
      delete '/destroy/:id' => 'api#destroy'
    end
  end


end
