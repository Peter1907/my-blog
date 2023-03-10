class CommentsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def new
    @comment = Comment.new(author_id: params[:user_id], post_id: params[:post_id])
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.author = current_user
    @comment.post = Post.find(params[:post_id])
    respond_to do |format|
      format.html do
        if @comment.save
          flash[:notice] = 'Comment was successfully created.'
          redirect_to user_post_path(current_user, params[:post_id])
        else
          render :new, status: :unprocessable_entity
        end
      end
    end
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html do
        flash[:notice] = 'Comment deleted successfully'
        redirect_to user_post_path(current_user, params[:post_id])
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
