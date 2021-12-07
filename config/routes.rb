Rails.application.routes.draw do
  get 'avatars/create'
  root to: "idioms#index"
  devise_for :users
  resources :idioms
  resources :users, only: [:show] do
    resources :avatars, only: [:create]
  end
  resources :comments
  resources :team, only: [:show]
  resources :faq, only: [:show]
end
