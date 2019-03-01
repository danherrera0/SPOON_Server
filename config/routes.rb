Rails.application.routes.draw do
  namespace :api do
    namespace:v1 do
      resources :categories
      resources :matches
      resources :restaurants
      resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    end
  end
end 
