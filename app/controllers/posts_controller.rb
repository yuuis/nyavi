class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(param[:id])
  end
end
