Rails.application.routes.draw do
  resources :award_winner_books
  resources :mystery_books
  resources :science_fiction_books
  resources :fantasy_books
  resources :historical_fiction_books
  resources :realistic_fiction_books
  resources :traditional_literature_books
  #get 'home/index'
  get 'home/about'
  get 'home/books'
  get 'traditional_literature_books/index'
  get 'realistic_ficiton_books/index'
  get 'historical_fiction_books/index'
  get 'fantasy_books/index'
  get 'science_fiction_books/index'
  root 'home#index'
end
