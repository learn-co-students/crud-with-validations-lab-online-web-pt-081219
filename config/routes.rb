Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs

  delete '/songs/:id', to: 'songs#destroy', as: 'remove_song'

end
