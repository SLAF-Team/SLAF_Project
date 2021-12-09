Rails.application.routes.draw do
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
  resources :idioms do
    resources :likes
    resources :unlikes
  end

  ### Admin

  resources :admin, only: [:index]
    namespace :admin do
      root 'admin#index'
      resources :user
      resources :idiom
    end
end