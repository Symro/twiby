class FavoritesController < ApplicationController

  def create

    # Add a tweet in your favorites
    favorite = Favorite.new(user_id: current_user.id, tweet_id: params[:id])

    # redirection if success or error
    if Favorite.where(:user_id => current_user.id, :tweet_id => params[:id]).blank?
      favorite.save
      redirect_to users_index_path, flash: { error: 'Favorited !' }
    else
      redirect_to users_index_path, flash: { error: 'Already in your favorites' }
    end

  end

  def destroy

    # Add a tweet in your favorites
    favorite = Favorite.where(:user_id => current_user.id, :tweet_id => params[:id])

    Favorite.destroy(favorite)
    redirect_to users_index_path, flash: { error: 'Deleted !' }

  end

end
