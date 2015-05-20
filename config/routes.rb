Rails.application.routes.draw do
  resources :seminars

  devise_for :users, controllers: { sessions: "users/sessions" }
  root to: "static#index"

  get '/dashboard' => 'dashboard#index'
end
