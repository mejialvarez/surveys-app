Rails.application.routes.draw do
  root 'surveys#index'

  resources :surveys do
    post 'complete', on: :member
  end
end
