Gearstantial::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'items#index'

  # Example of regular route:
  get 'items/new' => 'items#new'
  get 'items/edit' => 'items#edit'
  get 'items' => 'items#index'
  post 'items' => 'items#create' 
end
