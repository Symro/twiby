class UsersController < ApplicationController
  
  def index
    # Tweet list
    @tweet_list = Tweet.order('created_at DESC').all

    @new_tweet = Tweet.new
  end


end
