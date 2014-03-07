Gearstantial::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  resources :items 
  resources :employees

  # You can have the root of your site routed with "root"
  root 'items#index'
end
