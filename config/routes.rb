Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :recipes do
    resources :decisions, only: [:new, :create, :index]
  end
  resources :decisions, only: [ :destroy ]
  resources :weekdays, only: [ :index ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
