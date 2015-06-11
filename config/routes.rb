Rails.application.routes.draw do
  resources :seminars

  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }
  root to: "static#index"

  get '/dashboard' => 'dashboard#index'
  get '/registrations' => 'records#registrations'
  get '/cfp' => 'static#cfp'
  get '/help' => 'static#help'
  get '/team' => 'static#team'
  get '/about' => 'static#about'
end
