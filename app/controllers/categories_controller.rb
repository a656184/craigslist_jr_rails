class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new
    render 'new'
  end

  def show
  end

  def destroy
  end

end