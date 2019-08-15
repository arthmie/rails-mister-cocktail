class Dose < ApplicationRecord
  belongs_to :coktail
  belongs_to :ingredient

  validates :description, presence: true
  validates_uniqueness_of :ingredient_id, scope: :cocktail_id
end
