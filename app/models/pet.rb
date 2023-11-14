class Pet < ApplicationRecord
  SPECIES = ['dog', 'cat', 'pig', 'bird', 'dragon', 'hamster', 'bat']

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
