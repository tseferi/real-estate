Rails.application.routes.draw do
  resources :residences, only: [:index, :show]
  resources :amenities, only: [:show]
  root to:'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
