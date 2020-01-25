Rails.application.routes.draw do
  resources :users, only: %i[new create show]
  resources :events, only: %i[new create show index]
  resources :attendings, only: %i[create]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'events#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
