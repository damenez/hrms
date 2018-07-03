Rails.application.routes.draw do
  get 'sessions/new'
  # resources :dependents

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  resources :users
  resources :sessions

  resources :personnels do
  	resources :dependents
  end
  
  resources :positions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'personnels#index'

end
