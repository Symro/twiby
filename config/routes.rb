Rails.application.routes.draw do



  get 'tweets/index'
  post 'tweets/new'

  get 'users/index'
  get '/' => "users#index"
  get '/profile/:id' => "pages#show"

  devise_for :users, controllers: {
       sessions: 'users/sessions'
   }

end
