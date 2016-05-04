class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    puts params.inspect
    @user = User.create(user_params)
    redirect_to songs_path
  end

  private

      def user_params
        params.require(:user).permit(:email, :password_hash)
      end
end
