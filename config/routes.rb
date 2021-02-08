Rails.application.routes.draw do

  resources :auxes
  devise_for :users

  resources :users do
    collection do
      patch 'update_password'
    end
  end

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

  resources :exportnotes, path: 'exportnotes/:id'

  root :to => 'books#index'

end
