class PostsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @post = @category.posts.build
  end

  def create
    category = Category.find(params[:category_id])
    @post = category.posts.create(posts_params)
    redirect_to category_path(category)
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def posts_params
    params.require(:post).permit([:title, :description, :category_id])
  end



end
