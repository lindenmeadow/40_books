class PoetryAnthologyBook < ApplicationRecord
    belongs_to :user
    validates_presence_of :rating, :message => ": You forgot to give the book a rating!"
end
