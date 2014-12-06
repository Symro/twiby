class TweetsController < ApplicationController

  def index
  end

  def new

    @tweet = Tweet.create!({:user_id => current_user.id, :content => params[:tweet][:content]})

    if @tweet.save
      render html: 'ok'
    else
      render html: 'not ok'
    end

  end

end
