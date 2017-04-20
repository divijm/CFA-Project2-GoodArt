Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  resources :arts

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } do
    delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

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
