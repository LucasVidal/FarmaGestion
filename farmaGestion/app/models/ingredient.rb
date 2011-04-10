class Ingredient < Element
  def self.ingredients_not_included_in(inventory)
    return Ingredient.all.reject{|e| inventory.elements.include?(e)}
  end
end
