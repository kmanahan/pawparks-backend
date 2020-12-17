Rails.application.routes.draw do
  resources :parks, :path =>"dog-parks"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
