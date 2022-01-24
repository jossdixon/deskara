Rails.application.routes.draw do
  devise_for :users
  root to: 'venues#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :venues, only: [ :index, :show, :new, :create] do
    resources :favourites, only: [ :new, :create]
  end

  resources :venues, only: [:destroy]
  resources :favourites, only: [:destroy]
end
