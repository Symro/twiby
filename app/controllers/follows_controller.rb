class FollowsController < ApplicationController

  # add a new follower
  def create

    followed_id = params[:follow][:followed_id]

    @follow = Follow.new(follower_id: current_user.id, followed_id: followed_id)

    if Follow.where(:follower_id => current_user.id, :followed_id => followed_id).present?
      redirect_to profile_id_path(:id => followed_id), flash: {error:'Already followed'}
    else
      @follow.save
      redirect_to profile_id_path(:id => followed_id), flash: {error:"You're now following this user :)"}
    end

  end

  # remove a follower
  def destroy

    followed_id = params[:follow][:followed_id]

    @unfollow = Follow.where(follower_id: current_user.id, followed_id: followed_id)

    if @unfollow.present?
      @unfollow.destroy(@unfollow)
      redirect_to profile_id_path(:id => followed_id), flash: {error:"You're now unfollowing this user :("}
    else
      redirect_to profile_id_path(:id => followed_id), flash: {error:'Already unfollowed'}
    end

  end


end
