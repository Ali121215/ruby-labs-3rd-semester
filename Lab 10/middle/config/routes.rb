Rails.application.routes.draw do
  root 'mid#index'
  get '/create' => 'mid#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
