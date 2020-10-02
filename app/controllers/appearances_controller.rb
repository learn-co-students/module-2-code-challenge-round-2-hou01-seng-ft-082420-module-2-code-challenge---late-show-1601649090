class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
        @episodes = Episode.all
        @guests = Guest.all
    end 

    def create
        new_appearance = Appearance.create(appearance_params)
        redirect_to "/episodes/#{new_appearance.episode_id}"
    end 

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end 
end
