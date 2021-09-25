Rails.application.routes.draw do
  resources :possuvideos
  get 'pages/about'
  get 'pages/location'
  root 'pages#home' #другой способ
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
