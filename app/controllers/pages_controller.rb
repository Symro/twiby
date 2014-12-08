class PagesController < ApplicationController

  def index
    # Tweet list
    @tweet_list = Tweet.all

    @new_tweet = Tweet.new
  end

  def show

    # Show user basics informations and tweets
    @user       = User.find(params[:id])
    @user_tweet = Tweet.where(user_id: params[:id])

    rescue ActiveRecord::RecordNotFound
      flash[:notice] = "This profile doesn't exist"
      redirect_to :action => 'index'

  end


end
