Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# get 'lists/new', to: 'lists#new'
# post '/lists', to: 'lists#create'
# get 'lists', to: 'lists#index'
# get 'lists/:id', to: 'lists#show', as: :restaurant

resources :lists, only: [:new, :create, :index, :show] do
  resources :bookmarks, only: [:index, :new, :create]
end
end
