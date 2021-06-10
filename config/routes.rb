Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'sessions#new'

  get "signup" => 'users#new'
  get "login" => 'sessions#new'

  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'

  resources :sessions
  
  resources :users do
    resources :notes, shallow: true
  end


end
