class CartsController < ApplicationController
  include ActionView::Helpers::TextHelper
   def create
    song = Song.find(params[:song_id])
    id_string =song.id.to_s
    session[:cart] ||= {}
    session[:cart][id_string] ||= 0
    session[:cart][id_string] += 1
    quantity = session[:cart][id_string] + 1
    flash[:notice] = "You Added #{pluralize(quantity, "Copy")} of #{song.title} to the cart"
    redirect_to songs_path
  end
end
