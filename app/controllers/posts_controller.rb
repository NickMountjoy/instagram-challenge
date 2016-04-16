class PostsController < ApplicationController

  def index
      # raise 'Hello Nick'
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to @post
  end

  def post_params
    params.require(:post).permit(:caption, :image)
  end

  def show
    @post = Post.find(params[:id])
  end

end


# def restaurant_params
#    params.require(:restaurant).permit(:name, :image)
#  end

# def show
#    @restaurant = Restaurant.find(params[:id])
#  end
