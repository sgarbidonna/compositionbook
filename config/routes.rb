Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :notes, only:[:index, :show, :update, :destroy]
  # resolve("Notes") { route_for(:notes) }
  # get '/quierover/todaslasnotas', to: 'quierovernotas#show', as: 'quierovertodaslasnotas'
  root :to => 'composition#index'
end
