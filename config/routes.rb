Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'index', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: :show
  get 'new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update',  as: :update
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy
end
