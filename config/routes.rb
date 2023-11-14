Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # SEE ALL
  get '/pets', to: 'pets#index', as: :pets

  # receive the form
  post '/pets', to: 'pets#create'

  # CREATE
  # display the form
  get '/pets/new', to: 'pets#new', as: :new_pet




  # UPDATE
  # display the form
  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet

  # SEE DETAILS ABOUT ONE (read one)
  get '/pets/:id', to: 'pets#show', as: :pet
  # receive the form
  patch '/pets/:id', to: 'pets#update'

  delete '/pets/:id', to: 'pets#destroy'
end
