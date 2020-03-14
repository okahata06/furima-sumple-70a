Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  root "posts#index"
  resources :posts
  resources :users
  resources :products do
    member do
      get 'buyer'
    end
    collection do
      get 'search'
    end
  end

  resources :ad
  resources :comments
end
