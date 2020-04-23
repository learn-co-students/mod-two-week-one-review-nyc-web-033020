Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'seas#welcome' 
  resources :seas, only: :index 
  resources :seas, only: :new 
  resources :seas, only: :edit 
  resources :seas, only: :show 
  post "/seas", to: "seas#create" 
  patch "/seas/:id", to: "seas#update" 
  delete "/seas/:id", to: "seas#delete"   
end
