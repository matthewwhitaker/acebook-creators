class LikesController < ApplicationController

  def create
    @like = Like.create(user_id: current_user.id, post_id: params[:post_id])
    redirect_to posts_url
  end

  def destroy
    Like.find_by(id: params[:id]).destroy
    redirect_to posts_url
  end

end
