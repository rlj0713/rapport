Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Create a custom route called /levels/1/users
  # This would show all users at that level
  root 'sessions#new'

  get '/auth/:provider/callback' => 'google#create'

  get "signup" => 'users#new'
  get "login" => 'sessions#new'

  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'

  resources :sessions
  resources :notes
  resources :admins
  resources :googles
  
  resources :users do
    resources :notes, shallow: true
  end
  
  resources :levels do
    resources :users
  end

end
