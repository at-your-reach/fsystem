Rails.application.routes.draw do
  root 'customers#index'
  resources :customers
  root 'officers#index'
  resources :officers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
