class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @episodes = Episode.episodes(@guest)
    appearances = Appearance.ratings(@guest)
    @ratings = []
    appearances.each do |appearance|
      if appearance.guest_id == @guest.id
        @ratings << appearance.rating
      end 
    end
  end
end
