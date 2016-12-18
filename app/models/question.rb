class Question < ApplicationRecord
  belongs_to :game
  belongs_to :sentence
end
