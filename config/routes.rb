Rails.application.routes.draw do
  resources :users
  resources :attractions, :rides, :sessions

  get '/', to: 'users#index', as: 'root'
  # get '/signup', to: 'users#new', as: 'signup'

end
