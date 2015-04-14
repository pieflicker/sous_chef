class AddRecipeImages < ActiveRecord::Migration
  def change
    add_column :recipes, :recipeimage, :string
    add_column :recipes, :recipethumb, :string
  end
end
