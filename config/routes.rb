Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  get '/entries/new', to: 'entries#new'
  post '/entries/new', to: 'entries#create'
  get 'visitors/index', to: 'visitors#index'
  get '/entries/index', to: 'entries#index'
end
