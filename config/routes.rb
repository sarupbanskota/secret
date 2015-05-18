Rails.application.routes.draw do
  resources :seminars

  devise_for :users
  root to: "static#index"

  get '/dashboard' => 'dashboard#index'
end
