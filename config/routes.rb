Rails.application.routes.draw do

  root to: 'pages#home'
  devise_for :users

  resources :articles, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:create]
  end

  get 'bookings/:booking_id/reviews/new', to: 'reviews#new'
  post 'bookings/:booking_id/reviews', to: 'reviews#create', as: :booking_reviews
  get 'dashboard/listings', to: 'dashboard#listings'
  get 'dashboard/rentals', to: 'dashboard#rentals'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
