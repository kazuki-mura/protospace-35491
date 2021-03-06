Rails.application.routes.draw do
  # get 'prototypes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "prototypes#index"
  resources :users
  resources :prototypes do
    resources :comments, only: :create
  end
end
