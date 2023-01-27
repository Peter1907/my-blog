class LikesController < ApplicationController
  def create
    Like.create(author: current_user, post(params[:post_id]))
  end
end
