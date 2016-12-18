class Game < ApplicationRecord
  belongs_to :player
  has_many :questions
  has_many :sentences, through: :questions
end
