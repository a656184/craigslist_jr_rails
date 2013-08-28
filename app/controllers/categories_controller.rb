class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    redirect_to categories_path
  end

  def show
    @category = Category.find(params[:id])
    @posts = Post.where(category_id: params[:id])
  end

  private

  def category_params
    params.require(:category).permit([:name])
  end

end
