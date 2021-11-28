Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'
  get 'tweets' => 'tweets#index'
  root 'hello#index'
  get 'tweets/new' => 'tweets#new'
  post 'tweets' => 'tweets#create'
  
  get 'tweets/:id' => 'tweets#show',as: 'tweet'

  patch 'tweets/:id' => 'tweets#update'
  delete 'tweets/:id' => 'tweets#destroy' 
  get 'tweets/:id/edit' => 'tweets#edit', as:'edit_tweet'


end

