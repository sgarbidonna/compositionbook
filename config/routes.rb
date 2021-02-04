Rails.application.routes.draw do

  resources :notes
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root :to => 'composition#index'

  # match ':controller(/:action(/:id))(.:format)'
end
