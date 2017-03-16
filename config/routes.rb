Rails.application.routes.draw do
  resources :builds

  root 'welcome#index'

 
end
