Rails.application.routes.draw do
  root 'home#index'


  namespace :api do
    resources :food
  end
end
