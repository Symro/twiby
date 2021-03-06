class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:profile]

  def index
  end

  def profile

    @new_tweet = Tweet.new

    # Show user basics informations and tweets
    @user       = User.find(params[:id])
    @user_tweet = Tweet.order('created_at DESC').where(user_id: params[:id])

    @follow     = Follow.new

    @user_followers = @user.followers
    @user_following = @user.following

    @favorite_list = Favorite.where(user_id: current_user)

    # Check if the current user follow this profile
    if current_user and Follow.where(follower_id: current_user.id, followed_id: params[:id]).present?
      @following = true;
    end

    rescue ActiveRecord::RecordNotFound
      flash[:error] = "This profile doesn't exist"
      redirect_to users_index_path

  end

  def search
    if params[:query]
      @users = User.search(params[:query]).order('username DESC')
    end
  end


end
