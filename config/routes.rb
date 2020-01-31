Rails.application.routes.draw do
  resources :songs, only: [:new, :create, :show, :index, :edit, :update]
  #patch 'songs/:id', to: 'songs#update'
delete '/songs/:id', to: 'songs#destroy'


end
