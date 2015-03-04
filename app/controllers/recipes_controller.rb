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
        redirect_to recipes_url, :notice => "Deliciousness added, thank you!"
      else
        render "new"
      end
    end




private

  def recipe_params
    params.require(:recipe).permit(:title, :ingredients, :description, :instructions)
  end
end