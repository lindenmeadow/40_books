Rails.application.routes.draw do
  resources :historical_fiction_books
  resources :realistic_fiction_books
  resources :traditional_literature_books
  #get 'home/index'
  get 'home/about'
  get 'home/books'
  get 'traditional_literature_books/index'
  get 'realistic_ficiton_books/index'
  get 'historical_fiction_books/index'
  root 'home#index'
end
