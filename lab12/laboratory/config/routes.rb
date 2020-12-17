Rails.application.routes.draw do
  get '/login' => 'users#login'
  get '/logout' => 'users#logout'
  get '/register' => 'users#register'
  post '/auth' => 'users#auth'
  post '/new' => 'users#new'
  get '/users' => 'users#users'

  root 'lab#index'
  get '/results' => 'lab#results'
  get '/create' => 'lab#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
