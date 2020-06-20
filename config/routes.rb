Rails.application.routes.draw do
  devise_for :users
  root 'customers#index'
  resources :customers
  resources :officers
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end