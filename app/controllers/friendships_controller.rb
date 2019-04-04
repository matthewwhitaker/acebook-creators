class FriendshipsController < ApplicationController
  def new
  end

  def create
    @friendship = Friendship.create(user_id: current_user.id, friend_id: params[:id])
    redirect_to user_path(id: params[:id])
  end

  def index
  end

  def destroy
  end

  def show
  end
end
