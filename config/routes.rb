Rails.application.routes.draw do

  # CRUD for tweets
  resources :tweets

  get 'users/index'
  get '/' => "users#index"
  
  get '/profile' => "pages#index"
  get '/profile/:id' => "pages#show"


  devise_for :users, controllers: {
       sessions: 'users/sessions'
  }

end
