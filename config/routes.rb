Rails.application.routes.draw do

  root 'welcome#index'
  resources :questions
  resources :users
  resources :sessions
  get '/profile', to: 'profile#show'

end
