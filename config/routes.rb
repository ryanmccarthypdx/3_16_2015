Rails.application.routes.draw do
  root :to => 'sections#index'

  resources :sections
  resources :businesses
end
