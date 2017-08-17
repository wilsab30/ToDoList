Rails.application.routes.draw do
  # get 'homepages/index'
  get 'todos/index' =>'todos#index', as: 'index'

  # get 'todos/index'
  # root to: 'todos#index'

  get 'todos/show/:id' =>'todos#show', as: 'show'

  get 'todos/new' =>'todos#new', as: 'new'

  get 'todos/:id/edit' => 'todos#edit', as: 'edit'

  patch 'todos/:id/update' => 'todos#update', as: 'update'

  post 'todos/create' =>'todos#create', as: 'create'

  patch 'tasks/:id/toggle_completed' => 'tasks#toggle_completed', as:'toggle'

  delete 'todos/:id/destroy' => 'todos#destroy', as: 'delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
