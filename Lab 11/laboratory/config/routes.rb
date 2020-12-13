Rails.application.routes.draw do
  root 'lab#index'
  get '/results' => 'lab#results'
  get '/create' => 'lab#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
