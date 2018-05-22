Rails.application.routes.draw do
  get 'dashboard/listings'
  get 'dashboard/rentals'
  get 'reviews/new'
  get 'reviews/create'
  get 'bookings/create'
  get 'articles/index'
  get 'articles/create'
  get 'articles/new'
  get 'articles/show'
  devise_for :users
  root to: 'pages#home'
  get 'articles', to: 'articles#index'
  post 'articles', to: 'articles#create'
  get 'articles/new', to: 'articles#new'
  get 'articles/:id', to: 'articles#show', as: "article"
  post 'bookings', to: 'bookings#create'
  get 'bookings/:id/reviews/new', to: 'reviews#new'
  post 'reviews', to: 'reviews#create'
  get 'dashboard/listings', to: 'dashboard#listings'
  get 'dashboard/rentals', to: 'dashboard#rentals'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
