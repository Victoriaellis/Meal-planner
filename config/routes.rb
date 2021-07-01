Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :recipes
  resources :decisions, only: [ :destroy ]
  resources :weekdays do
    resources :decisions, only: [:new, :create, :index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
