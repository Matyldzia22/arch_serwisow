Rails.application.routes.draw do
  devise_for :users
  resources :builds

  root 'welcome#index'

 
end
