Rails.application.routes.draw do

  resources :auxes
  devise_for :users
  resources :users

  resources :notes do
    collection do
      get :export
    end
  end

  resources :books do
    collection do
      get :currentuserbooks
      get :selecteduserbooks
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root :to => 'books#index'

end
