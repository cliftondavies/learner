class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @progress_updates = @user.progress_updates.most_recent
    @followers = @user.followers.random
  end
end