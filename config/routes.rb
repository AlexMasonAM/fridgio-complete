Rails.application.routes.draw do

  root 'food#index'

  get "/login" => "sessions#new", as: :login
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy", as: :logout

  resources :users
  resources :food

  namespace :api do
    resources :food
  end
end
