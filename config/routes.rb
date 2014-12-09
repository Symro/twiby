Rails.application.routes.draw do

  # CRUD for tweets
  resources :tweets

  # CRUD for follows
  resources :follows

  get 'users/index'
  get '/' => "users#index"
  
  get '/profile' => "pages#index"
  get '/profile/:id' => "pages#profile"


  devise_for :users, controllers: {
       sessions: 'users/sessions'
  }

end
