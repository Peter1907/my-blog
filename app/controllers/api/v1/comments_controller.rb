module Api
    module V1
      class CommentsController < ApiController
        def index
          @post = Post.find(params[:post_id])
          @comments = @post.comments
          render json: @comments
        end

        def create
          @comment = Comment.new(comments_params)
          if @comment.save
            render json: @comment
          else
            render json: @comment.errors, status: :unprocessable_entity
          end
        end
      
        private
      
        def comments_params
          params.permit(current_user.id, :post_id, :text)
        end
      end
    end
  end