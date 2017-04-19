Rails.application.routes.draw do

  resources :arts

  devise_for :users

  root 'pages#home'

  get 'pages/artists'
  get 'pages/catalog'
  get 'pages/about'
  # get 'pages/contact'
  get 'pages/thoughts'
  # get 'contact', to: "contact#index"
  get 'contact', to: "pages#contact"
  # post 'contact', to: "contact#mail"
  post 'contact', to: "pages#mail"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
