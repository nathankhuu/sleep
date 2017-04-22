Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  get '/entries/new', to: 'entries#new'
   get '/entries/show', to: 'entries#show'
  post '/entries/new', to: 'entries#create'
  get 'visitors/index', to: 'visitors#index'
  get '/users/index', to: 'users#index'
  get '/users/calendar', to: 'users#calendar'
end
