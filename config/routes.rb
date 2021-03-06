Rails.application.routes.draw do
  root to: 'cocktails#index'

  resources :cocktails, only: [:index, :show, :new, :create, :update] do
    resources :doses, only: [ :new, :create]
    resources :ratings, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :doses, only: [ :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
