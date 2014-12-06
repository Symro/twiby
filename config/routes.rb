Rails.application.routes.draw do



  get 'tweets/index'

  get 'users/index'

  get '/' => "users#index"

  devise_for :users, controllers: {
       sessions: 'users/sessions'
   }

end
