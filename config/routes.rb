Rails.application.routes.draw do
  devise_for :users
  root "pages#joinus"
  get "/projects", to: "pages#projects"

  resources :projects

  devise_scope :user do
    get '/login', to: 'devise/sessions#new'
    get '/signup', to: 'users/registrations#new'
    get '/logout', to: 'users/sessions#destroy'

    post '/signup', to: 'users/registrations#create'
    post '/login', to: 'users/sessions#create' 

  end
end
