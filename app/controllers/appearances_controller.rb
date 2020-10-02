class AppearancesController < ApplicationController

    def new
        @guests = Guest.all
        @episodes = Episode.all
        @appearance = Appearance.new
    end 

    def create

        @appearance = Appearance.new(appearance_params)
        @appearance.save
        redirect_to "/episodes/#{@appearance.episode_id}"
    end

    private

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :numeric_rating)
    end 
end