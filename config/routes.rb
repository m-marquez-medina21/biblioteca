Rails.application.routes.draw do
  get 'books/index'

  get 'books', to: 'groups#index'
  root 'books#index'

  get 'books/new'
  post 'books', to: 'books#create'

  get 'books/:id', to: 'books#show', as: 'book'

  get 'books/:id/edit', to: 'books#edit', as: 'book_edit'
  patch 'books/:id', to: 'books#update'

  delete 'books/:id', to: 'books#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

