Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/books' => 'books#index'
  get '/books/:id' => 'books#show'
  get '/books/new' => 'books#new'
  post '/books' => 'books#create'
  get '/books/:id/edit' => 'books#edit'
  put '/books/:id' => 'books#update'
  delete '/books/:id' => 'books#destroy'
end
