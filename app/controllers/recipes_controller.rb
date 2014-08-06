class RecipesController < ApplicationController
  def index
    @recipes = RecipesCollection.all.to_a
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new params[:recipe]
    RecipesCollection.save @recipe
  end
end
