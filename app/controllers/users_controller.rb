class UsersController < ApplicationController
  
  def index
    # Tweet list
    # @tweet_list = Tweet.order('created_at DESC').all
    following_array = current_user.following.map(&:id).push(current_user.id)
    @tweet_list = Tweet.where(user_id: following_array).order('created_at DESC')

    @favorite_list = Favorite.where(user_id: current_user)

    @new_tweet = Tweet.new
    
  end


end
