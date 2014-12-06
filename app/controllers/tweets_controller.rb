class TweetsController < ApplicationController

  def index
  end

  def new

    # Create the new tweet
    @tweet = Tweet.new(user_id: current_user.id, content: params[:tweet][:content])

    # redirections
    if @tweet.save
      redirect_to users_index_path
    else
      redirect_to users_index_path, flash: { error: 'error' }
    end

  end

end
