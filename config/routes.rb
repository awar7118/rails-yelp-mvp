Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Route for visitor seing the list of all restaurants.
  # get '/restaurants', to: 'restaurant#index'
  resources :restaurants, only: [:index, :show,:new,:create] do
    resources :reviews, only: [:index,:new,:create]
  end
end
