Rails.application.routes.draw do
  
  resources :posts

  get 'about' => 'welcome#about'
  
  root 'welcome#index'

 end
