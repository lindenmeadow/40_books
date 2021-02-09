Rails.application.routes.draw do
  resources :informational_books
  resources :biography_books
  resources :poetry_anthology_books
  resources :award_winner_books
  resources :mystery_books
  resources :science_fiction_books
  resources :fantasy_books
  resources :historical_fiction_books
  resources :realistic_fiction_books
  resources :traditional_literature_books
  
  get 'home/about'
  get 'home/books'
  
  root 'home#index'
end
