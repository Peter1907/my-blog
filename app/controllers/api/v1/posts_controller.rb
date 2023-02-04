module Api
  module V1
    class PostsController < ApiController
      before_action :authenticate_user!

      def index
        @posts = Post.where(author_id: params[:user_id])
        render json: @posts
      end
    end
  end
end
