Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'
  get 'books/my_books', to: 'books#my_books'

  resources :books do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[destroy index update]

  resources :wishlists, only: %i[index show new create destroy] do
    resources :bookmarks, only: %i[new create destroy]
  end
end
