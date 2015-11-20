class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  	@search_term = params[:looking_for] || 'chocolate'
  	# @recipes = Recipe.for(@search_term)
  end

  # def create
  #   Recipe.create(params[:recipe])
  #   redirect_to '/recipes'
  # end
end
