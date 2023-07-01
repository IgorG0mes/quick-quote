Rails.application.routes.draw do
  resources :comissions
  resources :order_items
  resources :orders
  resources :clients
  resources :users
  resources :products
  resources :suppliers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
