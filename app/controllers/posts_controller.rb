class PostsController < ApplicationController
  before_action :set_post, except: [:index, :create, :new] #only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all 
  end

  def new
    @post = current_user.posts.new
  end

  def show
    @comment = @post.commets.build
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :user_id, category_ids: [])
    end

    def set_post
      @post = Post.find(params[:id])
    end
end
