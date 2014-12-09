class FollowsController < ApplicationController

  # add a new follower
  def create

    @follow = Follow.new(follower_id: current_user.id, followed_id: params[:follow][:followed_id])

    if Follow.where(:follower_id => current_user.id, :followed_id => params[:follow][:followed_id]).present?
      redirect_to users_index_path, flash: {error:'Already followed'}
    else
      @follow.save
      redirect_to users_index_path, flash: {error:'Tu peux !'}
    end

  end

  # remove a follower
  def destroy

    

    
  end


end
