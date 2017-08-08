Rails.application.routes.draw do
  # get '/orders' => 'orders#index'
  # get '/orders/new' => 'order#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
