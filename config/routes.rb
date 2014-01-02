Gearstantial::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


  # Example of regular route:
  get 'items/new' => 'items#new'
  get 'items/edit' => 'items#edit'
  get 'items/:id' => 'items#show' #should I just put item :id here instead? items/:item_id/items/:id
  get 'items' => 'items#index'
  post 'items' => 'items#create' 

  # You can have the root of your site routed with "root"
  root 'items#index'
end
