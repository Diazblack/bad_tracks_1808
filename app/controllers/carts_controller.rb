class CartsController < ApplicationController
   def create
    song = Song.find(params[:song_id])
    flash[:notice] = "Added #{song.title} to the cart"
    redirect_to songs_path
  end
end
