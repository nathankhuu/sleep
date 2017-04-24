Rails.application.routes.draw do
  root to: 'pages#about'
  devise_for :users
  get '/entries/new', to: 'entries#new'
  get '/entries/show', to: 'entries#show'
  post '/entries/new', to: 'entries#create'
  get 'visitors/index', to: 'visitors#index'
  get 'visitors/alcohol', to: 'visitors#alcohol'
  get 'visitors/hygiene', to: 'visitors#hygiene'
  get 'visitors/body', to: 'visitors#body'
  get 'visitors/brain', to: 'visitors#brain'
  get 'visitors/caffeine', to: 'visitors#caffeine'
  get 'visitors/benefits', to: 'visitors#benefits'
  get '/users/index', to: 'users#index'
  get '/users/calendar', to: 'users#calendar'
end
