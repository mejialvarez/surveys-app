Rails.application.routes.draw do
  root 'surveys#index'

  devise_for :users

  resources :surveys do
    post 'complete', on: :member
    get 'summary', on: :member
  end
end
