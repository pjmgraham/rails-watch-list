Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'lists', to: 'lists#index'
  get 'lists/:id', to: 'lists#show'
  get 'lists/new', to: 'lists#new'
  post 'lists', to: 'lists#create'
  get 'lists/:id/bookmarks', to: 'bookmarks#index'
  get 'lists/:id/bookmarks/new', to: 'bookmarks#new'
  post 'lists/:id/bookmarks', to: 'bookmarks#create'
  delete 'lists/:id/bookmarks/:id', to: 'bookmarks#destroy'
end
