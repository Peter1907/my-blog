class LikesController < ApplicationController
  def create
    Like.create(author: current_user, post: Post.find(params[:post_id]))
    redirect_to user_post_path(User.find(params[:user_id]), Post.find(params[:post_id]))
  end
end
