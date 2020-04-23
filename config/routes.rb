Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # resources :products
  devise_for :users,
    controllers:{omniauth_callbacks: "users/omniauth_callbacks"}
  root 'public#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
