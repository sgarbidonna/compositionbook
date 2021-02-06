Rails.application.routes.draw do

  devise_for :users
  resources :users
  resources :notes
  resources :books

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root :to => 'books#index'
  # root :to => 'users#sing_in'

  # match ':controller(/:action(/:id))(.:format)'
end
