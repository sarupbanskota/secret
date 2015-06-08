Rails.application.routes.draw do
  resources :seminars

  devise_for :users, controllers: { sessions: "users/sessions" }
  root to: "static#index"

  get '/dashboard' => 'dashboard#index'
  get '/cfp' => 'static#cfp'
  get '/help' => 'static#help'
  get '/team' => 'static#team'
  get '/about' => 'static#about'
end
