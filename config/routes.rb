Rails.application.routes.draw do
  
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
   }
  
  resources :posts
  #resources :post_details , :only => [:new, :create, :edit, :update, :destroy]
  resources :chats
  resources :likes
  resources :users , :only => [:show, :index]
  resources :boards
  resources :board_details , :only => [:new, :create, :edit, :update, :destroy]
  resources :amis
  resources :user_details
  get "about" => "home#about"
  root "home#top"
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
