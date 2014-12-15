Rails.application.routes.draw do

  # CRUD for tweets
  resources :tweets

  # CRUD for follows
  resources :follows

  # CRUD for favorites
  resources :favorites

  get 'users/index'
  get '/' => 'users#index'
  
  get '/profile' => 'pages#index'
  get '/profile/:id' => 'pages#profile', as: 'profile_id'

  get '/search' => 'pages#search', as: 'search_users'

  devise_for :users, controllers: {
       sessions: 'users/sessions',
       registrations: 'users/registrations'
  }

end
