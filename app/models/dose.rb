class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :cocktail, presence: true, uniqueness: { scope: :ingredient, message: "Ingredient déjà utilisé pour ce cocktail"}
  validates :ingredient, presence: true
end
