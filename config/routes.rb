Rails.application.routes.draw do
  resources :users
  resources :attractions, :rides, :sessions

  get '/', to: 'users#index', as: 'root'
  # get '/signup', to: 'users#new', as: 'signup'
  get '/signin', to: 'sessions#new', as: 'signin'
  delete '/sessions/:id', to: 'sessions#destroy', as: 'logout'

end
