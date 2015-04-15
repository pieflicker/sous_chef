class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
      if @recipe.save
        redirect_to "/recipes/#{@recipe.id}"
      else
        render "new"
      end
    end




private

  def recipe_params
    params.require(:recipe).permit(:title, :ingredients, :description, :instructions, :category, :recipeimage,)
  end
end
