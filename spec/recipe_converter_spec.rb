require_relative "../lib/recipe_converter"

describe RecipeConverter do
  describe "to_tablespoons" do
    it "it converts to tablespoons" do
      recipe = RecipeConverter.new({
        sugar:  15,
        flour:  30,
        butter: 45,
        })

      converted_recipe = recipe.to_tablespoons

      expect(converted_recipe).to eq({
        sugar:  1,
        flour:  2,
        butter: 3,
      })
    end

    it "it converts to tablesppons" do
      recipe = RecipeConverter.new({
        sugar:  7,
        flour:  15,
        butter: 15,
        })

      converted_recipe = recipe.to_tablespoons

      expect(converted_recipe).to eq({
        sugar:  0.5,
        flour:  1,
        butter: 1,
      })
    end

    it "it converts to tablesppons" do
      recipe = RecipeConverter.new({
        sugar:  15,
        flour:  15,
        butter: 0,
        })

      converted_recipe = recipe.to_tablespoons

      expect(converted_recipe).to eq({
        sugar:  1,
        flour:  1,
        butter: 0,
      })
    end
  end

  describe "to_cups" do
    it "it converts to tablesppons" do
      recipe = RecipeConverter.new({
        sugar:  1,
        flour:  2,
        butter: 3,
        })

      converted_recipe = recipe.to_cups

      expect(converted_recipe).to eq({
        sugar:  16,
        flour:  32,
        butter: 48,
        })
    end

    it "it converts to tablesppons" do
      recipe = RecipeConverter.new({
        sugar:  1.11,
        flour:  2,
        butter: 3,
        })

      converted_recipe = recipe.to_cups

      expect(converted_recipe).to eq({
        sugar:  17.8,
        flour:  32,
        butter: 48,
        })
    end
  end

end
