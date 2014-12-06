class UsersController < ApplicationController

  def index
    # Tweet list
    @tweet_list = Tweet.all

    @new_tweet = Tweet.new
  end

end
