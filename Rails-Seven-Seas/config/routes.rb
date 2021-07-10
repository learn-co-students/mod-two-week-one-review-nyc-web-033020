Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/seas', to: 'seas#index'
  get '/seas/new', to: 'seas#new'
  # post '/seas', to: 'seas#show'
  # get '/seas/:id',
  # get 'seas/:id/edit'
  # patch '/articles/:id'
  # put '/articles/:id'
  # delete '/articles/:id'
end
