Gearstantial::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


  # Example of regular route:
  get 'items/new' => 'items#new', :as => 'new_item'
  get 'items/:id/edit' => 'items#edit'
  get 'items/:id' => 'items#show' #should I just put item :id here instead? items/:item_id/items/:id
  get 'items' => 'items#index'
  put 'items/:id' => 'items#update'
  delete 'items/:id' => 'items#destroy'
  post 'items' => 'items#create', :as => 'create_item' 

  # You can have the root of your site routed with "root"
  root 'items#index'
end
