class PagesController < ApplicationController

  def index
    # Tweet list
    @tweet_list = Tweet.order('created_at DESC').all

    @new_tweet = Tweet.new
  end

  def profile

    # Show user basics informations and tweets
    @user       = User.find(params[:id])
    @user_tweet = Tweet.order('created_at DESC').where(user_id: params[:id])

    @follow     = Follow.new

    @user_followers = current_user.followers
    @user_following = current_user.following

    # Check if the current user follow this profile
    if Follow.where(follower_id: current_user.id, followed_id: params[:id]).present?
      @following = true;
    end

    rescue ActiveRecord::RecordNotFound
      flash[:notice] = "This profile doesn't exist"
      redirect_to :action => 'index'

  end


end
