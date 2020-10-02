class AppearancesController < ApplicationController
  def new
    @new_appearance = Appearance.new 
    @guests = Guest.all 
    @episodes = Episode.all 
  end

  def create
    @new_appearance = Appearance.create(appearance_params)
    redirect_to episode_path(@new_appearance.episode_id)
  end

  def appearance_params 
    params.require(:appearance).permit(:episode_id, :guest_id, :rating)
  end 
end
