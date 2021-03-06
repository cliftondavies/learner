class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @user_progress_updates = @user.progress_updates.include_author.most_recent
    @followers = @user.followers.random
    @update_count = @user.progress_updates.size
  end
end
