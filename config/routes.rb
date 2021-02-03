Rails.application.routes.draw do
  resources :realistic_fiction_books
  resources :traditional_literature_books
  #get 'home/index'
  get 'home/about'
  get 'home/books'
  get 'traditional_literature_books/index'
  get 'realistic_ficiton_books/index'
  root 'home#index'
end
