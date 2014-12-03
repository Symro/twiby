Rails.application.routes.draw do



  get 'tweets/index'

  get 'users/index'

  get '/' => "pages#index"

  devise_for :users
end
