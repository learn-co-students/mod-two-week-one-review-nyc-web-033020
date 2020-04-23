Rails.application.routes.draw do
  get '/seas', to: 'seas#index'
  get '/', to: 'seas#welcome'
  get '/seas/new', to: 'seas#new'
  get '/seas/:id', to: 'seas#show', as: 'sea'
  post 'seas', to: 'seas#create'
  get '/seas/:id/edit', to: 'seas#edit'
  patch '/seas/:id', to: 'seas#update'
  delete '/seas/:id', to: 'seas#destroy'
  #resources :seas
end
