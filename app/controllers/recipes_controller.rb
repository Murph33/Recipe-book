class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe_params = params.require(:recipe).permit(:title, :health, :taste, :ingredients, :directions)
    @recipe = Recipe.new recipe_params
    if @recipe.save
      redirect_to recipes_path
    else
      flash[:alert] = "Failed to create.  Please correct errors"
      render :new
    end
  end

  def edit
    @recipe = Recipe.find params[:id]
  end

  def update
    recipe_params = params.require(:recipe).permit(:title, :health, :taste, :ingredients, :directions)
    @recipe = Recipe.find params[:id]
    if @recipe.update recipe_params
      redirect_to recipes_path
    else
      flash[:alert] = "Failed to update.  Please correct errors"
      render :new
    end
  end

  def delete
    @recipe = Recipe.find params[:id]
    @recipe.destroy
    redirect_to recipes_path
  end

  def show
    @recipe = Recipe.find params[:id]
  end

end
