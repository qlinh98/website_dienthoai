Rails.application.routes.draw do
  resources :line_items
  resources :orders

  get "/carts/:id", to: "carts#show", as: "cart"
  resources :carts
  resources :public
  resources :polls
  resources :product_details

  resources :products

  # resources :category_pros
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #resources :products
  devise_for :users,
    controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root "public#main"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
