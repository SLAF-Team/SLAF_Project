Rails.application.routes.draw do
  get 'avatars/create'
  root to: "idioms#index"
  devise_for :users
  resources :idioms do
    resources :comments
  end
  resources :users, only: [:show] do
    resources :avatars, only: [:create]
  end
  resources :team, only: [:show]
  resources :faq, only: [:show]
end
