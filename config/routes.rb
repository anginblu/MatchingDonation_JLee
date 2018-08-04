Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :donations, only: [:new, :create, :show, :index]
  #create a new donation, which redirects to showing page after donation is made

  resources :matches, only: [:index, :show, :new, :create]
  #show the final matching amount for each matching account

  root 'home#home'

end
