Rails.application.routes.draw do
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'songs#index'

  delete '/songs/:id', to: 'songs#destroy', as: 'remove_song'
end
