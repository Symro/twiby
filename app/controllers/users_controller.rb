class UsersController < ApplicationController

  def index
    # Tweet list
    @tweet_list = Tweet.order('created_at DESC').all

    @new_tweet = Tweet.new
  end

  def show

    # Show user basics informations and tweets
    @user       = User.find(params[:id])
    @user_tweet = Tweet.where(user_id: params[:id])

  end

end
