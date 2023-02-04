module Api
  module V1
    class UsersController < ApiController
      before_action authenticate_user!
      def index
      end

      private

      def user_params
        params.require(:user).permit(:name, :email, :password)
      end
    end
  end
end