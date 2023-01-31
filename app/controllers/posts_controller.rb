class PostsController < ApplicationController
  def index
    @user = User.includes(:posts, posts: [:comments]).find(params[:user_id])
    @posts = @user.posts.order(created_at: :asc).paginate(page: params[:page], per_page: 3)
  end

  def show
    @post = Post.includes(:comments).find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author = current_user
    respond_to do |format|
      format.html do
        if @post.save
          redirect_to user_posts_path(current_user)
        else
          render :new, status: :unprocessable_entity
        end
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
