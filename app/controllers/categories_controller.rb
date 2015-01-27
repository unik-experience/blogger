class CategoriesController < ApplicationController
  def index
    @articles = Category.find(params[:id]).articles
  end
  
end