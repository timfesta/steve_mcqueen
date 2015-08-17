Rails.application.routes.draw do

  get '/signup', to: 'users#new'
  get '/profile', to: 'users#show' 
  resources :users, only:[:create]

get '/login', to: 'sessions#new'
get 'logout', to: 'session#destroy'
resources :sessions, only:[:create]


  root to: 'users#index'

  # get    '/users/new' to: 'users#new'
  # post   '/signup' to: 'users#create' 
  # get    '/profile/:id' to: 'users#show' 
  # get    '/profile/:id/edit' to: 'users#edit'
  # patch  '/profile/:id' to: 'users#update'
  # delete '/profile/:id' to: 'users#destroy'


 
end


#    Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         users#index
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
