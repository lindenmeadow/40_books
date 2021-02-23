class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :award_winner_books, dependent: :destroy
         has_many :biography_books, dependent: :destroy
         has_many :fantasy_books, dependent: :destroy
         has_many :historical_fiction_books, dependent: :destroy
         has_many :informational_books, dependent: :destroy
         has_many :mystery_books, dependent: :destroy
         has_many :poetry_anthology_books, dependent: :destroy
         has_many :realistic_fiction_books, dependent: :destroy
         has_many :science_fiction_books, dependent: :destroy
         has_many :traditional_literature_books, dependent: :destroy
end
