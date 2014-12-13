class FavoritesController < ApplicationController

  def create

    # Add a tweet in your favorites
    favorite = Favorite.new(user_id: current_user.id, tweet_id: params[:id])

    # redirection if success or error
    if Favorite.where(:user_id => current_user.id, :tweet_id => params[:id]).blank?
      favorite.save
      redirect_to :back, flash: { success: 'This twib is now in your favorite' }
    else
      redirect_to :back, flash: { error: 'Already in your favorites' }
    end

  end

  def destroy

    # Delete a tweet from your favorites
    favorite = Favorite.where(:user_id => current_user.id, :tweet_id => params[:id])

    Favorite.destroy(favorite)
    redirect_to :back, flash: { success: 'Twib removed from your favorites' }

  end

end
