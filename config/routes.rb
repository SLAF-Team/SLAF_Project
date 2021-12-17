Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth' }
  resources :idioms do
    resources :comments
  end
  resources :users, only: [:show] do
    resources :avatars, only: [:create]
  end
  resources :users do
    resources :idioms, only: [:index]
  end
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
