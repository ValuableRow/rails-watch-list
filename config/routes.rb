Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # index - A user can see all the lists
  get 'lists', to: 'lists#index'
  # new, create - A user can create a new list
  get 'lists/new', to: 'lists#new', as: :new_list
  post 'lists', to: 'lists#create'
  # show - A user can see the details of a given list and its name
  get 'lists/:id', to: 'lists#show', as: :list
  # root "articles#index"
end
