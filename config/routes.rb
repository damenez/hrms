Rails.application.routes.draw do
  # resources :dependents
  resources :personnels do
  	resources :dependents
  end
  
  resources :positions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
