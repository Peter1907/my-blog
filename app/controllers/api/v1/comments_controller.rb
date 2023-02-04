module Api
    module V1
      class CommentsController < ApiController
        def index
          @comments = Comment.where(post_id: params[:post_id])
          render json: @comments
        end
      end
    end
  end