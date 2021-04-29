Rails.application.routes.draw do
  resources :balances
  resources :moves
  devise_for :users
  devise_for :views
  resources :transactions
  resources :accounts
  root 'pages#home'
  get "about" => "pages#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
