Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'

  resources :books do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[destroy index update]

  resources :wishlists, only: %i[index show new create destroy] do
    resources :bookmarks, only: %i[new create destroy]
  end
end
