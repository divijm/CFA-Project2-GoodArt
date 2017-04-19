Rails.application.routes.draw do

  resources :arts

  devise_for :users

  root 'pages#home'

  get 'pages/artists'
  get 'pages/catalog'
  get 'pages/about'
  # get 'pages/contact'
  get 'pages/thoughts'
  get 'contact', to: "contact#index"
  post 'contact', to: "contact#mail"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
