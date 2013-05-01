Bucketlist::Application.routes.draw do
  resources :comments, :only => [:create]
  resources :todo_items


   root :to => 'todo_items#index'

  
end
