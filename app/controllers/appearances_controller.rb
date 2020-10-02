class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
        @episodes = Episode.all
        @guests = Guest.all 
    end

    def create
        @appearance = appearance.create(app_params)
    end

    private
    

    def app_params
        params.require(:appearance).permit(:"guest_id",
         :episode_id, :rating)
    end


end
