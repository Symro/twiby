class FollowsController < ApplicationController

  # add a new follower
  def create

    followed_id = params[:follow][:followed_id].to_i

    # stocking query
    @follow = Follow.where(follower_id: current_user.id, followed_id: followed_id)

    # Check if entry already exists or if the user try to follow itself
    if followed_id === current_user.id
      redirect_to profile_id_path(:id => followed_id), flash: {error: "You can't follow yourself"}
    elsif @follow.present?
      redirect_to profile_id_path(:id => followed_id), flash: {error: 'Already followed'}
    else
      @follow.create
      redirect_to profile_id_path(:id => followed_id), flash: {success: "You're now following this user :)"}
    end

  end

  # remove a follower
  def destroy

    followed_id = params[:follow][:followed_id].to_i

    # Check if entry is present to delete it
    @unfollow = Follow.where(follower_id: current_user.id, followed_id: followed_id)
    if @unfollow.present?
      @unfollow.destroy(@unfollow)
      redirect_to profile_id_path(:id => followed_id), flash: {success: "You're now unfollowing this user"}
    else
      redirect_to profile_id_path(:id => followed_id), flash: {error: 'Already unfollowed'}
    end

  end


end
