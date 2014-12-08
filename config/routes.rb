Rails.application.routes.draw do



  get 'tweets/index'
  post 'tweets/new'

  get 'users/index'
  get '/' => "users#index"
  get '/show/:id' => "users#show"

  devise_for :users, controllers: {
       sessions: 'users/sessions'
   }

end
