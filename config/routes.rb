Rails.application.routes.draw do
  get 'homepages/index'
  root to: 'homepages#index'

  get 'todos/index'

  get 'todos/show/:id' =>'todos#show', as: 'show'

  get 'todos/new' =>'todos#new', as: 'new'

  get 'todos/destroy'

  get 'todos/:id/edit' => 'todos#edit', as: 'edit'

  patch 'todos/:id/update' => 'todos#update', as: 'update'

  post 'todos/create' =>'todos#create', as: 'create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
