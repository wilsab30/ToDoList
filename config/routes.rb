Rails.application.routes.draw do

  get 'todos/index' =>'todos#index', as: 'index'

  root to: 'todos#index'

  get 'todos/show/:id' =>'todos#show', as: 'show'

  get 'todos/new' =>'todos#new', as: 'new'

  get 'todos/:id/edit' => 'todos#edit', as: 'edit'

  patch 'todos/:id/update' => 'todos#update', as: 'update'

  post 'todos/create' =>'todos#create', as: 'create'

  patch 'todos/:id/toggle_completed' => 'todos#toggle_completed', as:'toggle'

  delete 'todos/:id/destroy' => 'todos#destroy', as: 'delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
