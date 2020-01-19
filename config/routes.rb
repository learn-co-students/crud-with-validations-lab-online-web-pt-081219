Rails.application.routes.draw do
  resources :songs, only: [:index, :create, :show, :new, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
