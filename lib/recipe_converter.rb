class RecipeConverter
  def initialize(ingredients)
    @ingredients = ingredients
  end

  def to_tablespoons
    converted_hash = {}
    @ingredients.each do |key, value|
      converted_hash[key] = (value/15.0).round(1)
    end
    converted_hash
  end

  def to_cups
    converted_hash = {}
    @ingredients.each do |key, value|
      converted_hash[key] = (value*16.0).round(1)
    end
    converted_hash
  end
end
