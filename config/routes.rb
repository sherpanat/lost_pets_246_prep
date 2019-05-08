Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'pets', to: 'pets#index'
  # get 'pets/new', to: 'pets#new'
  # get 'pets/:id', to: 'pets#show'
  # post 'pets', to: 'pets#create'
  # get 'pets/:id/edit', to: 'pets#edit'
  # patch 'pets', to: 'pets#update'
  # delete 'pets', to: 'pets#destroy'

  resources :pets
end
