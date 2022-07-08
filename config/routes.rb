Rails.application.routes.draw do
  # get '/', to: 'homes#top'
  # root :to => 'homes#top'
  # root :to => 'books#show'


  get '/', to: 'homes#top'
  get 'books/new'
  post 'books' => 'books#create'

  # get 'books/new'
  # post 'books' => 'books#create'
  # get "books/:id" => "books#show"
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
