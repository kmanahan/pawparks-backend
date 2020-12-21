Rails.application.routes.draw do
  post '/login', to: "sessions#login"
  post '/automaticlogin', to: "sessions#automaticlogin"
  resources :users
  resources :parks, :path =>"dog-parks"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
