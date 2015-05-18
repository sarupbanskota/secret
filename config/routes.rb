Rails.application.routes.draw do
  resources :sessions

  devise_for :users
  root to: "static#index"

  get '/dashboard' => 'dashboard#index'
end
