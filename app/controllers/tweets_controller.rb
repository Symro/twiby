class TweetsController < ApplicationController

  def index
  end

  def create

    # Create the new tweet
    @tweet = Tweet.new(user_id: current_user.id, content: params[:tweet][:content])

    # redirection if success or error
    if @tweet.save
      redirect_to users_index_path
    else
      redirect_to users_index_path, flash: { error: 'error' }
    end

  end

  def destroy

    # Destroy the tweet
    tweet = Tweet.find(params[:id])
    if tweet.destroy
      redirect_to :back, flash: { error: 'deleted' }
    else
      redirect_to :back, flash: { error: 'error' }
    end

  end

end
